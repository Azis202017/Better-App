import 'dart:async';

import 'package:better_app/app/shared/widgets/logo_with_background.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../routes/app_pages.dart';
import '../controllers/second_splash_screen_controller.dart';

class SecondSplashScreenView extends GetView<SecondSplashScreenController> {
  const SecondSplashScreenView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GetBuilder<SecondSplashScreenController>(initState: (_) {
      Timer(
        const Duration(
          seconds: 3,
        ),
        () => Get.offAllNamed(Routes.LOGIN),
      );
    }, builder: (context) {
      return const Scaffold(
        body: LogoBackground(
          logo: 'fill_logo',
          height: 90,
          width: 140,
        ),
      );
    });
  }
}
