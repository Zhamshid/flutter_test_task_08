import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:dio/dio.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:test_project_flutter/src/core/logic/token_storage.dart';
import 'package:test_project_flutter/src/core/network/layers/network_connectivity.dart';
import 'package:test_project_flutter/src/core/network/layers/network_creator.dart';
import 'package:test_project_flutter/src/core/network/layers/network_decoder.dart';
import 'package:test_project_flutter/src/core/network/layers/network_executer.dart';

/// Интерфейс для имплементации зависимостей
abstract class IAppDependencies {
  /// External
  Dio get dio;
  Connectivity get connectivity;
  SharedPreferences get sharedPreferences;

  // PackageInfo get packageInfo;
  // FirebaseAnalytics get analytics;

  /// Common
  ITokenStorage get tokenStorage;

  /// Network
  NetworkExecuter get networkExecuter;
  NetworkConnectivity get connectionChecker;
  NetworkDecoder get decoder;
  NetworkCreator get creator;

  /// Repo
}
