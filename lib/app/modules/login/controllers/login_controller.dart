import 'package:better_app/app/services/authentication_service.dart';
import 'package:get/get.dart';

import '../../../services/input/login_input.dart';

class LoginController extends GetxController {
  void login() async {
    LoginInput loginInput =
        LoginInput(email: 'aaa@gmail.com', password: 'test1234');
    bool isLogin = await AuthenticationService().login(loginInput: loginInput);
    print(isLogin);
  }
  void logout() async {
   
    bool isLogout = await AuthenticationService().logout();
    print(isLogout);
  }
}
