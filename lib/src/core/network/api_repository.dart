import 'package:dio/dio.dart';
import 'package:test_project_flutter/src/core/constants/environment.dart';
import 'package:test_project_flutter/src/core/network/dio_module.dart';

class APIRepository {
  DioClient? dioClient;
  final String _baseUrl = kBaseUrl;

  APIRepository() {
    var dio = Dio();

    dioClient = DioClient(_baseUrl, dio);
  }
}
