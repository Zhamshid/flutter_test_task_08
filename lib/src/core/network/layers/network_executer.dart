import 'dart:async';

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:l/l.dart';
import 'package:test_project_flutter/src/core/exceptions/network_exception.dart';
import 'package:test_project_flutter/src/core/network/interfaces/base_clien_generator.dart';
import 'package:test_project_flutter/src/core/network/interfaces/base_model.dart';
import 'package:test_project_flutter/src/core/network/layers/network_connectivity.dart';
import 'package:test_project_flutter/src/core/network/layers/network_creator.dart';
import 'package:test_project_flutter/src/core/network/layers/network_decoder.dart';
import 'package:test_project_flutter/src/core/network/network_options/netrowk_options.dart';
import 'package:test_project_flutter/src/core/network/result.dart';
import 'package:test_project_flutter/src/core/utils/error_util.dart';

class NetworkExecuter {
  final Dio _dio;
  final NetworkConnectivity _connectionChecker;
  final NetworkDecoder _decoder;
  final NetworkCreator _creator;

  NetworkExecuter({
    required Dio dio,
    required NetworkConnectivity connectionChecker,
    required NetworkDecoder decoder,
    required NetworkCreator creator,
  })  : _dio = dio,
        _connectionChecker = connectionChecker,
        _creator = creator,
        _decoder = decoder;

  bool _isTimeOut(DioError err) =>
      err.type == DioErrorType.receiveTimeout ||
      err.type == DioErrorType.sendTimeout ||
      err.type == DioErrorType.connectTimeout;

  Future<Result<K>> execute<K, T>({
    required BaseClientGenerator route,
    T? responseType,
    NetworkOptions? options,
  }) async {
    if (kDebugMode) {
      l.d(route);
    }

    if (await _connectionChecker.status) {
      try {
        final response = await _creator.request(
          route: route,
          options: options,
          dio: _dio,
        );
        if (responseType != null) {
          final data = _decoder.decode<K, T>(
            response: response,
            responseType: responseType as BaseModel,
          );

          return Result<K>.success(data);
        } else {
          return Result<K>.success('' as K);
        }

        /// Dio error
      } on DioError catch (err) {
        if (kDebugMode) {
          l.d('$route => ${NetworkException.request(error: err)}');
        }

        return _isTimeOut(err)
            ? Result<K>.failure(const NetworkException.timeOut())
            : Result<K>.failure(NetworkException.request(error: err));

        /// dynamic error
      } on Object catch (e, stackTrace) {
        if (kDebugMode) {
          l.d('$route => ${NetworkException.type(error: e.toString())}');
        }

        // Отправляем ошибку в Sentry
        ErrorUtil.logError(
          e,
          stackTrace: stackTrace,
          hint: '$route => ${NetworkException.type(error: e.toString())}',
        );

        return Result<K>.failure(NetworkException.type(error: e.toString()));
      }

      /// No Internet Connection
    } else {
      if (kDebugMode) {
        l.d(const NetworkException.connectivity());
      }

      return Result<K>.failure(const NetworkException.connectivity());
    }
  }
}
