import 'package:get/get.dart';

import '../controllers/welcome_before_login_controller.dart';

class WelcomeBeforeLoginBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<WelcomeBeforeLoginController>(
      () => WelcomeBeforeLoginController(),
    );
  }
}
