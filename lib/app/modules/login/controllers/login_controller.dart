import 'package:better_app/app/helpers/alert_error.dart';
import 'package:better_app/app/helpers/alert_success.dart';
import 'package:better_app/app/services/authentication_service.dart';
import 'package:better_app/app/services/input/authentication/login_input.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../routes/app_pages.dart';

class LoginController extends GetxController {
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
    if (value!.isEmpty) {
      return "Email harus diisi terlebih dahulu";
    } else if (!value.contains("@")) {
      return "Tambahakn @ di email mu supaya valid";
    }
    return null;
  }

  String? passwordValidate(String? value) {
    if (value!.isEmpty) {
      return "Password harus diisi terlebih dahulu";
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
    bool isLoginSuccess =
        await AuthenticationService().login(loginInput: dataLogin);
    if (isLoginSuccess) {
      alertSuccess(
          title: 'Login Success', subtitle: 'Yeayy welcome to Better App');
    } else {
      alertError(
          title: 'Login Fail',
          subtitle: 'Try to input email and password correctly!');
    }
  }
   void onEmailSubmitted() {
    FocusScope.of(Get.context!).requestFocus(passwordFocus);
  }
  void toRegisterPage() {
    // Get.toNamed(Routes);
  }

  
}
