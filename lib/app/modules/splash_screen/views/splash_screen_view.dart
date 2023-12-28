import 'dart:async';

import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../routes/app_pages.dart';
import '../../../shared/widgets/center_logo.dart';
import '../controllers/splash_screen_controller.dart';

class SplashScreenView extends GetView<SplashScreenController> {
  const SplashScreenView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GetBuilder<SplashScreenController>(
      initState: (_) {
        Timer(const Duration(seconds:2), () {
          Get.offAllNamed(Routes.SECOND_SPLASH_SCREEN);
        });
      },
      builder: (context) {
        return const Scaffold(
          body: CenterLogo(
            logo: 'logo_line',
            width: 130,
            height: 85,
          ),
        );
      }
    );
  }
}
