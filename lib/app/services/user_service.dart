import 'package:dio/dio.dart';

import '../constant/global_variable.dart';

class UserService {
  Future<bool> logout() async {
    try {
      String url = '$apiUrl/user/logout';
      final response = await dio.delete(
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
