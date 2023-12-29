import 'package:better_app/app/data/model/user.dart';
import 'package:dio/dio.dart';

import '../constant/global_variable.dart';

class UserService {
  Future<User?> fetchUser() async {
    try {
      String url = "$apiUrl/user";
      Response response = await Dio().get(
        url,
        options: Options(
          headers: headersWithAuth,
        ),
      );
      if(response.statusCode == 200) {
        return User.fromJson(response.data);
      }
      return null;
    } catch (e) {
      return throw Exception(e);
    }
  }

  Future<bool> logout() async {
    try {
      String url = '$apiUrl/user/';
      final response = await dio.get(
        url,
        options: Options(
          headers: headersWithAuth,
          validateStatus: (_) => true,
        ),
      );
      if (response.statusCode == 200) {
        return true;
      }
      return false;
    } catch (e) {
      return throw Exception(e);
    }
  }
}
