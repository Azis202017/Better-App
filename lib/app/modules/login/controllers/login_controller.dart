import 'package:better_app/app/services/authentication_service.dart';
import 'package:better_app/app/services/input/authentication/register_input.dart';
import 'package:get/get.dart';

import '../../../services/input/authentication/login_input.dart';

class LoginController extends GetxController {
  void login() async {
    LoginInput loginInput =
        LoginInput(email: 'aaa@gmail.com', password: 'test1234');
    bool isLogin = await AuthenticationService().login(loginInput: loginInput);
    print(isLogin);
  }

  void register() async {
    RegisterInput registerInput = RegisterInput(
        name: "Abdul Azis Al Ayubbi",
        email: "azisa6980@gmail.com",
        password: '123456789',
        passwordConfirmation: "123456789");
    bool isLogout = await AuthenticationService().register(
      registerInput: registerInput,
    );
    print(isLogout);
  }
}
