import 'dart:async';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:dio/dio.dart';
import 'package:l/l.dart';

class RequestRetrier {
  final Dio client;
  final Connectivity connectivity;

  RequestRetrier({required this.client, required this.connectivity});

  Future<Response> scheduleRequestRetry(RequestOptions options) {
    StreamSubscription<ConnectivityResult>? streamSubscription;
    final responseCompleter = Completer<Response>();

    streamSubscription = connectivity.onConnectivityChanged.listen((ConnectivityResult event) {
      l.d('Event is: $event');
      if (event != ConnectivityResult.none) {
        streamSubscription?.cancel();
        responseCompleter.complete(client.fetch(options));
      }
    });

    return responseCompleter.future;
  }
}
