import 'dart:convert';

import 'package:better_app/app/services/input/login_input.dart';
import '../constant/global_variable.dart';

class AuthenticationService {
  Future<bool> login({required LoginInput loginInput}) async {
    try {
      Map<String, dynamic> login = {
        "email": loginInput.email,
        "password": loginInput.password
      };
      String url = '$apiUrl/login';
      final response = await dio.post(
        url,
        data: json.encode(login),
      );
      String token  = 'Bearer ${response.data['token']}';
      
      if(response.statusCode == 200) {
        storage.write('token', token );
        return true;
      }
      return false;
    } catch (e) {
      return throw Exception(e);
    }
  }
}
