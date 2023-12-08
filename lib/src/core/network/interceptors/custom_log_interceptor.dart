import 'package:dio/dio.dart';

class CustomLogInterceptor extends Interceptor {
  final bool shouldPrint;

  CustomLogInterceptor({
    this.request = true,
    this.requestHeader = true,
    this.requestBody = false,
    this.responseHeader = true,
    this.responseBody = false,
    this.error = true,
    this.logPrint = print,
    this.shouldPrint = false,
  });

  /// Print request [Options]
  bool request;

  /// Print request header [Options.headers]
  bool requestHeader;

  /// Print request data
  bool requestBody;

  /// Print [Response.data]
  bool responseBody;

  /// Print [Response.headers]
  bool responseHeader;

  /// Print error message
  bool error;

  void Function(Object object) logPrint;

  void _printResponse(Response? response) {
    _printKV('uri', response?.requestOptions.uri);
    if (responseHeader) {
      _printKV('statusCode', response?.statusCode);
      if (response?.isRedirect ?? false) {
        _printKV('redirect', response?.realUri);
      }

      logPrint('headers:');
      response?.headers.forEach(
        (String key, List<String> v) => _printKV(' $key', v.join('\r\n\t')),
      );
    }
    if (responseBody) {
      logPrint('Response Text:');
      _printAll(response?.data as Map);
    }
    logPrint('');
  }

  void _printKV(String key, Object? v) {
    logPrint('$key: $v');
  }

  void _printAll(Map msg) {
    msg.toString().split('\n').forEach(logPrint);
  }

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    if (shouldPrint) {
      logPrint('*** Request ***');
      _printKV('uri', options.uri);
      //options.headers;

      if (request) {
        _printKV('method', options.method);
        _printKV('responseType', options.responseType.toString());
        _printKV('followRedirects', options.followRedirects);
        _printKV('connectTimeout', options.connectTimeout);
        _printKV('sendTimeout', options.sendTimeout);
        _printKV('receiveTimeout', options.receiveTimeout);
        _printKV(
          'receiveDataWhenStatusError',
          options.receiveDataWhenStatusError,
        );
        _printKV('extra', options.extra);
      }
      if (requestHeader) {
        logPrint('headers:');
        options.headers.forEach((String key, v) => _printKV(' $key', v));
      }
      if (requestBody) {
        logPrint('data:');
        _printAll(options.data as Map);
      }
      logPrint('');
    }
    handler.next(options);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    if (shouldPrint) {
      logPrint('*** Response ***');
      _printResponse(response);
    }
    handler.next(response);
  }

  @override
  void onError(DioError err, ErrorInterceptorHandler handler) {
    if (shouldPrint) {
      if (error) {
        logPrint('*** DioError ***:');
        logPrint('uri: ${err.requestOptions.uri}');
        logPrint('$err');
        if (err.response != null) {
          _printResponse(err.response);
        }
        logPrint('');
      }
    }

    handler.next(err);
  }
}
