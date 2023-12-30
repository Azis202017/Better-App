import 'package:better_app/app/shared/themes/color.dart';
import 'package:better_app/app/shared/widgets/center_loading.dart';
import 'package:better_app/app/shared/widgets/primary_button.dart';
import 'package:better_app/app/shared/widgets/subtitle_text.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../shared/widgets/rich_three_text.dart';
import '../controllers/welcome_before_login_controller.dart';

class WelcomeBeforeLoginView extends GetView<WelcomeBeforeLoginController> {
  const WelcomeBeforeLoginView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GetBuilder<WelcomeBeforeLoginController>(
      builder: (_) {
        return controller.isLoading ? const CenterLoading(): SafeArea(
          child: Scaffold(
            body: SingleChildScrollView(
              child: Container(
                margin: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 40,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    PrimaryButton(
                      title: 'Skip',
                      onPressed: controller.toHomePage,
                      width: 82,
                      height: 56,
                      borderRadius: 8,
                      backgroundColor: grey100Color,
                      foregroundColor: primaryEbonyClayColor,
                    ),
                    const SizedBox(
                      height: 60,
                    ),
                    const Padding(
                      padding: EdgeInsets.only(
                        right: 86,
                      ),
                      child: RichFourText(
                        text1: 'Learning becomes',
                        text2: ' fun',
                        text3: ' and',
                        text4: ' easy',
                      ),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    const SubtitleText(
                      subtitle:
                          'Log in to personalize your experience & track your progress',
                    ),
                    
                  ],
                ),
              ),
            ),
            bottomNavigationBar: SizedBox(
              height: 190,
              child: Column(
                children: [
                  const Center(
                    child: SubtitleText(
                      subtitle:
                          'By continuing I agree with the Terms & Conditions, Privacy Policy',
                      textAlign: TextAlign.center,
                    ),
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 20,
                    ),
                    child: PrimaryButton(
                      title: 'Continue to login',
                      backgroundColor: primaryEbonyClayColor,
                      onPressed: controller.toHomePage,
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      }
    );
  }
}
