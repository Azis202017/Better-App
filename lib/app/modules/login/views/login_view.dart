import 'package:better_app/app/shared/themes/color.dart';
import 'package:better_app/app/shared/themes/font.dart';
import 'package:better_app/app/shared/widgets/primary_button.dart';
import 'package:better_app/app/shared/widgets/rich_two_text.dart';
import 'package:better_app/app/shared/widgets/text_input.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../shared/widgets/rich_three_text.dart';
import '../../../shared/widgets/subtitle_text.dart';
import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Get.put(LoginController());

    return GetBuilder<LoginController>(builder: (context) {
      return Form(
        key: controller.formKey,
        child: SafeArea(
          child: Scaffold(
            body: SingleChildScrollView(
              child: Container(
                margin: const EdgeInsets.symmetric(
                  horizontal: 16,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 40,
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
                    const SizedBox(
                      height: 20,
                    ),
                    TextInput(
                      title: 'Email',
                      hintText: 'Email',
                      icon: 'assets/svg/mail-01.svg',
                      onChange: controller.onChangeEmail,
                      textEditingController: controller.emailController,
                      focusNode: controller.emailFocus,
                      onEditingComplete: controller.onEmailSubmitted,
                      validator: controller.emailValidate,
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    TextInput(
                      focusNode: controller.passwordFocus,
                      title: 'Password',
                      hintText: 'Password',
                      isShowPassword: controller.isObsecurePassword,
                      onChange: controller.onChangePassword,
                      showPassword: controller.changeObsecurePassword,
                      icon: 'assets/svg/lock-01.svg',
                      textEditingController: controller.passwordController,
                      validator: controller.passwordValidate,
                    ),
                    const SizedBox(
                      height: 46,
                    ),
                    PrimaryButton(
                      title: 'Login',
                      onPressed: controller.checkActiveButton()
                          ? controller.login
                          : null,
                    ),
                    const SizedBox(
                      height: 22,
                    ),
                    GestureDetector(
                      onTap: controller.toRegisterPage,
                      child: Center(
                        child: RichTwoText(
                          text1: 'Don\'t have an account?',
                          text2: ' Register here',
                          styleText1: p4Medium,
                          styleText2: p4Bold.copyWith(
                            color: primaryBetterColor,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      );
    });
  }
}
