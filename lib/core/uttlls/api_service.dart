import 'package:dio/dio.dart';

class ApiService {
  final Dio _dio;
  final baseUrl = "https://www.googleapis.com/books/v1/";

  ApiService(this._dio);
  get({required String endPoint}) {
    _dio.get('$baseUrl$endPoint');
  }
}
