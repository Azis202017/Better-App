import 'package:get/get.dart';

import '../../../constant/global_variable.dart';
import '../../../routes/app_pages.dart';

class WelcomeBeforeLoginController extends GetxController {
  @override
  void onReady() {
    super.onReady();
    checkIsFirstTime();
  }

  void toHomePage() {
    storage.write('welcome_before_login', 1);
    Get.offAllNamed(Routes.LOGIN);
  }
 

  void checkIsFirstTime() {
    if (storage.read('welcome_before_login') == 1) {
      Get.offAllNamed(Routes.LOGIN);
    }
  }
}
