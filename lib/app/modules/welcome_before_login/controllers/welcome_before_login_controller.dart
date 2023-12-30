import 'package:get/get.dart';

import '../../../constant/global_variable.dart';
import '../../../routes/app_pages.dart';

class WelcomeBeforeLoginController extends GetxController {
  bool isLoading = true;

  @override
  void onReady() {
    super.onReady();
    checkIsFirstTime();
  }

  void toHomePage() async {
    isLoading = true; 

    await Future.delayed(const Duration(seconds: 2));

    storage.write('welcome_before_login', 1);
    isLoading = false; 
    update();
    Get.offAllNamed(Routes.LOGIN);
  }

  void checkIsFirstTime() async {
    isLoading = true; 

    await Future.delayed(const Duration(seconds: 3));

    if (storage.read('welcome_before_login') == 1) {
      isLoading = false; 
      Get.offAllNamed(Routes.LOGIN);
    } else {
      isLoading = false; 
      
    }
    update();
  }
}
