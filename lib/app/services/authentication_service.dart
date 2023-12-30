import 'dart:convert';

import 'package:dio/dio.dart';

import '../constant/global_variable.dart';
import 'input/authentication/login_input.dart';
import 'input/authentication/register_input.dart';

class AuthenticationService {
  Future<bool> login({required LoginInput loginInput}) async {
    try {
      Map<String, dynamic> dataLogin = {
        "email": loginInput.email,
        "password": loginInput.password
      };

      String url = '$apiUrl/login';
      final response = await dio.post(
        url,
        data: json.encode(dataLogin),
        options: Options(
          headers: headers,
          validateStatus: (_) => true,
        ),
      );

      if (response.statusCode == 200) {
        String token = response.data['token'];

        storage.write('token', token);
        return true;
      }
      return false;
    } catch (e) {
      return throw Exception(e);
    }
  }

  Future<bool> register({required RegisterInput registerInput}) async {
    try {
      Map<String, dynamic> dataRegis = {
        "name": registerInput.name,
        "email": registerInput.email,
        "password": registerInput.password,
        "password_confirmation": registerInput.passwordConfirmation,
      };

      String url = '$apiUrl/register';
      final response = await dio.post(
        url,
        data: json.encode(dataRegis),
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
