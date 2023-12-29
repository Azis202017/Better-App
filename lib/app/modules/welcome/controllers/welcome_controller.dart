import 'package:better_app/app/routes/app_pages.dart';
import 'package:get/get.dart';

import '../../../constant/global_variable.dart';

class WelcomeController extends GetxController {
  @override
  void onReady() {
    super.onReady();
    checkIsFirstTime();
  }
  void toHomePage() {
    storage.write('welcome', 1);
    Get.offAllNamed(Routes.HOME);
  }

  void checkIsFirstTime() {
    if (storage.read('welcome') == 1) {
      Get.offAllNamed(Routes.HOME);
    }
  }
}
