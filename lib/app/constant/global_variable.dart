import 'package:dio/dio.dart';
import 'package:get_storage/get_storage.dart';

const apiUrl = "https://book-crud-service-6dmqxfovfq-et.a.run.app/api";
GetStorage storage = GetStorage();
Map<String, String> headersWithAuth = {
  'Authentication': 'Bearer ${storage.read('token')}',
  'Content-Type' : 'application/json',
  'Accept' : 'application/json'
};

Map<String,String> headers = {
  'Content-Type' : 'application/json',
  'accept' : 'application/json',
};
Dio dio = Dio();