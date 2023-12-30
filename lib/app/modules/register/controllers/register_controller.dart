import 'package:better_app/app/helpers/alert_success.dart';
import 'package:better_app/app/routes/app_pages.dart';
import 'package:better_app/app/services/authentication_service.dart';
import 'package:better_app/app/services/input/authentication/register_input.dart';
import 'package:better_app/app/shared/widgets/center_loading.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../helpers/alert_error.dart';

class RegisterController extends GetxController {
  final formKey = GlobalKey<FormState>();
  String name = "";
  String confirmPassword = "";

  String email = "";
  String password = "";
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();

  FocusNode nameFocus = FocusNode();

  FocusNode emailFocus = FocusNode();
  FocusNode passwordFocus = FocusNode();
  FocusNode confirmPasswordFocus = FocusNode();

  bool isObsecurePassword = true;
  bool isObsecureConfirmPassword = true;

  String? onChangeName(String? value) {
    name = value ?? "";
    update();
    return name;
  }

  String? onChangeEmail(String? value) {
    email = value ?? "";
    update();
    return email;
  }

  String? onChangePassword(String? value) {
    password = value ?? "";
    update();
    return password;
  }

  String? onChangeConfirmPassword(String? value) {
    confirmPassword = value ?? "";
    update();
    return confirmPassword;
  }

  String? nameValidate(String? value) {
    if (value == null || value.isEmpty) {
      return "Email cannot be empty.";
    }
    return null;
  }

  String? emailValidate(String? value) {
    if (value == null || value.isEmpty) {
      return "Email cannot be empty.";
    } else if (!value.contains("@")) {
      return "Please add '@' to create a valid email address.";
    }
    return null;
  }

  String? passwordValidate(String? value) {
    if (value == null || value.isEmpty) {
      return "Password cannot be empty.";
    }
    return null;
  }

  String? confirmPasswordValidate(String? value) {
    if (value == null || value.isEmpty) {
      return "Confirm Password cannot be empty.";
    } else if (!(value == password)) {
      return "Confirm Password does not same as password";
    }
    return null;
  }

  bool checkActiveButton() {
    return email.isNotEmpty &&
        password.isNotEmpty &&
        name.isNotEmpty &&
        confirmPassword == password;
  }

  void changeObsecurePassword() {
    isObsecurePassword = !isObsecurePassword;
    update();
  }

  void changeObsecureConfirmPassword() {
    isObsecureConfirmPassword = !isObsecureConfirmPassword;
    update();
  }

  void onNameSubmitted() {
    FocusScope.of(Get.context!).requestFocus(emailFocus);
  }

  void onEmailSubmitted() {
    FocusScope.of(Get.context!).requestFocus(passwordFocus);
  }

  void onPasswordSubmitted() {
    FocusScope.of(Get.context!).requestFocus(confirmPasswordFocus);
  }

  void toLoginPage() {
    Get.offAllNamed(Routes.LOGIN);
  }

  void register() async {
    RegisterInput registerData = RegisterInput(
      name: name,
      email: email,
      password: password,
      passwordConfirmation: confirmPassword,
    );

    try {
      Get.defaultDialog(
        title: "Waiting for the process",
        content: const CenterLoading(),
      );

      bool isRegisterSuccess = await AuthenticationService().register(
        registerInput: registerData,
      );

      if (formKey.currentState!.validate()) {
        if (isRegisterSuccess) {
          alertSuccess(
            title: 'Register Success',
            subtitle: 'Yeayy you are a new member of Better App',
          );
          Get.offAllNamed(Routes.LOGIN);
        } else {
          alertError(
            title: 'Register Failed',
            subtitle:
                'Woaa the email is the same as another person. Please change the email.',
          );
        }
      }
    } finally {
      Get.back();
    }
  }

  void backToLogin() {
    Get.back();
  }
}
