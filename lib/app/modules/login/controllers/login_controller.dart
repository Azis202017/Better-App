import 'package:better_app/app/helpers/alert_error.dart';
import 'package:better_app/app/helpers/alert_success.dart';
import 'package:better_app/app/services/authentication_service.dart';
import 'package:better_app/app/services/input/authentication/login_input.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../routes/app_pages.dart';
import '../../../shared/widgets/center_loading.dart';

class LoginController extends GetxController {
  final formKey = GlobalKey<FormState>();
  String email = "";
  String password = "";
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  FocusNode emailFocus = FocusNode();
  FocusNode passwordFocus = FocusNode();

  bool isObsecurePassword = true;

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

  bool checkActiveButton() {
    return email.isNotEmpty && password.isNotEmpty;
  }

  void changeObsecurePassword() {
    isObsecurePassword = !isObsecurePassword;
    update();
  }

  void login() async {
    LoginInput dataLogin = LoginInput(
        email: emailController.text, password: passwordController.text);

    Get.defaultDialog(
      title: "Waiting for the process",
      content: const CenterLoading(),
    );
    bool isLoginSuccess =
        await AuthenticationService().login(loginInput: dataLogin);
    Get.back();
    if (formKey.currentState!.validate()) {
      if (isLoginSuccess) {
        alertSuccess(
            title: 'Login Success', subtitle: 'Yeayy welcome to Better App');
        Get.offAllNamed(Routes.WELCOME);
      } else {
        alertError(
            title: 'Login Fail',
            subtitle: 'Try to input email and password correctly!');
      }
    }
  }

  void onEmailSubmitted() {
    FocusScope.of(Get.context!).requestFocus(passwordFocus);
  }

  void toRegisterPage() {
    Get.toNamed(Routes.REGISTER);
  }
}
