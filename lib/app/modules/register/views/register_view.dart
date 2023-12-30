import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../shared/themes/color.dart';
import '../../../shared/themes/font.dart';
import '../../../shared/widgets/primary_button.dart';
import '../../../shared/widgets/rich_three_text.dart';
import '../../../shared/widgets/rich_two_text.dart';
import '../../../shared/widgets/subtitle_text.dart';
import '../../../shared/widgets/text_input.dart';
import '../controllers/register_controller.dart';

class RegisterView extends GetView<RegisterController> {
  const RegisterView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Get.put(RegisterController());

    return GetBuilder<RegisterController>(builder: (_) {
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
                      height: 20,
                    ),
                    PrimaryButton(
                      title: '',
                      icon: Icons.arrow_back_rounded,
                      onPressed: controller.backToLogin,
                      width: 82,
                      height: 56,
                      borderRadius: 8,
                      backgroundColor: grey100Color,
                      foregroundColor: primaryEbonyClayColor,
                    ),
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
                          'Register to personalize your experience & track your progress',
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    TextInput(
                      title: 'Name',
                      hintText: 'Name',
                      icon: 'assets/svg/user-03.svg',
                      onChange: controller.onChangeName,
                      textEditingController: controller.nameController,
                      focusNode: controller.nameFocus,
                      onEditingComplete: controller.onNameSubmitted,
                      validator: controller.nameValidate,
                    ),
                    const SizedBox(
                      height: 16,
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
                      title: ' Password',
                      hintText: ' Password',
                      isShowPassword: controller.isObsecurePassword,
                      onChange: controller.onChangePassword,
                      showPassword: controller.changeObsecurePassword,
                      icon: 'assets/svg/lock-01.svg',
                      textEditingController: controller.passwordController,
                      validator: controller.passwordValidate,
                      onEditingComplete: controller.onPasswordSubmitted,
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    TextInput(
                      focusNode: controller.confirmPasswordFocus,
                      title: 'Confirm Password',
                      hintText: 'Confirm Password',
                      isShowPassword: controller.isObsecureConfirmPassword,
                      onChange: controller.onChangeConfirmPassword,
                      showPassword: controller.changeObsecureConfirmPassword,
                      icon: 'assets/svg/lock-01.svg',
                      textEditingController:
                          controller.confirmPasswordController,
                      validator: controller.confirmPasswordValidate,
                    ),
                    const SizedBox(
                      height: 46,
                    ),
                    PrimaryButton(
                      title: 'Login',
                      onPressed: controller.checkActiveButton()
                          ? controller.register
                          : null,
                    ),
                    const SizedBox(
                      height: 22,
                    ),
                    GestureDetector(
                      onTap: controller.toLoginPage,
                      child: Center(
                        child: RichTwoText(
                          text1: 'Already have account?',
                          text2: ' Login here',
                          styleText1: p4Medium,
                          styleText2: p4Bold.copyWith(
                            color: primaryBetterColor,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 40,
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
