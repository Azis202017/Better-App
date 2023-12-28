import 'package:get/get.dart';

import '../controllers/second_splash_screen_controller.dart';

class SecondSplashScreenBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SecondSplashScreenController>(
      () => SecondSplashScreenController(),
    );
  }
}
