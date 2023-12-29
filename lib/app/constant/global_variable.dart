import 'dart:io';

import 'package:dio/dio.dart';
import 'package:get_storage/get_storage.dart';

const apiUrl = "https://book-crud-service-6dmqxfovfq-et.a.run.app/api";
GetStorage storage = GetStorage();
Map<String, dynamic> headersWithAuth = {
  HttpHeaders.authorizationHeader: 'Bearer ${GetStorage().read('token')}',
  HttpHeaders.acceptHeader : 'application/json'
};

Map<String,dynamic> headers = {
  'Content-Type' : 'application/json',
  'accept' : 'application/json',
};
Dio dio = Dio();