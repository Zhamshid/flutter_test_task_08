// ignore_for_file: avoid-non-null-assertion

import 'dart:io';

import 'package:dio/dio.dart';
import 'package:test_project_flutter/src/core/network/interfaces/base_clien_generator.dart';
import 'package:test_project_flutter/src/core/network/network_options/netrowk_options.dart';

class NetworkCreator {
  /// Делаем запрос
  Future<Response> request(
          {required BaseClientGenerator route,
          required Dio dio,
          NetworkOptions? options}) =>
      dio.fetch(
        RequestOptions(
          headers: dio.options.headers,
          baseUrl: dio.options.baseUrl,
          method: route.method,
          path: route.path,
          queryParameters: route.queryParameters,
          data: route.body,
          sendTimeout: route.sendTimeout,
          receiveTimeout: route.receiveTimeOut,
          onReceiveProgress: options?.onReceiveProgress,
          onSendProgress: options?.onSendProgress,
          validateStatus: (statusCode) =>
              statusCode! >= HttpStatus.ok &&
              statusCode <= HttpStatus.multipleChoices,
        ),
      );
}
