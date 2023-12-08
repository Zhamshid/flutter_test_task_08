// ignore_for_file: member-ordering-extended

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:test_project_flutter/src/core/constants/environment.dart';
import 'package:test_project_flutter/src/core/dependencies/app_dependencies.dart';
import 'package:test_project_flutter/src/core/logic/token_storage.dart';
import 'package:test_project_flutter/src/core/network/layers/network_connectivity.dart';
import 'package:test_project_flutter/src/core/network/layers/network_creator.dart';
import 'package:test_project_flutter/src/core/network/layers/network_decoder.dart';
import 'package:test_project_flutter/src/core/network/layers/network_executer.dart';
import 'package:test_project_flutter/src/core/widgets/scope.dart';

/// Скоуп зависимостей
class AppDependenciesScope extends Scope {
  static const DelegateAccess<_AppDependenciesScopeDelegate> _delegateOf =
      Scope.delegateOf<AppDependenciesScope, _AppDependenciesScopeDelegate>;

  final SharedPreferences sharedPreferences;
  final PackageInfo packageInfo;

  const AppDependenciesScope({
    required this.sharedPreferences,
    required this.packageInfo,
    required Widget child,
    Key? key,
  }) : super(child: child, key: key);

  @override
  ScopeDelegate<Scope> createDelegate() => _AppDependenciesScopeDelegate();

  static IAppDependencies dependenciesOf(BuildContext context) =>
      _delegateOf(context);
}

class _AppDependenciesScopeDelegate extends ScopeDelegate<AppDependenciesScope>
    implements IAppDependencies {
  Dio? _client;
  Connectivity? _connectivity;
  NetworkConnectivity? _connectionChecker;
  ITokenStorage? _tokenStorage;
  NetworkExecuter? _networkExecuter;
  NetworkCreator? _creator;
  NetworkDecoder? _decoder;

  /// Конфигурация [dio]
  Dio _configureDio() {
    // ignore: no_leading_underscores_for_local_identifiers
    final _client = Dio()
      ..options = BaseOptions(
        baseUrl: kBaseUrl,

        /// https://jsonplaceholder.typicode.com/
        headers: <String, String>{
          'accept': 'application/json',
          'authorization': 'Bearer ${tokenStorage.getToken()}',
        },
      );
    // ..interceptors.addAll(<Interceptor>[
    //   // LogOutInterceptor(userRepository),
    //   // if (kDebugMode) CustomLogInterceptor(),
    // ]);

    return _client;
  }

  @override
  NetworkExecuter get networkExecuter => _networkExecuter ??= NetworkExecuter(
        connectionChecker: connectionChecker,
        dio: dio,
        creator: creator,
        decoder: decoder,
      );

  @override
  ITokenStorage get tokenStorage => _tokenStorage ??= SharedPrefsTokenStorage(
        preferences: sharedPreferences,
      );
  @override
  SharedPreferences get sharedPreferences => widget.sharedPreferences;

  @override
  NetworkConnectivity get connectionChecker =>
      _connectionChecker ??= NetworkConnectivity(connectivity: connectivity);

  @override
  NetworkCreator get creator => _creator ??= NetworkCreator();

  @override
  NetworkDecoder get decoder => _decoder ??= NetworkDecoder();

  @override
  Connectivity get connectivity => _connectivity ??= Connectivity();

  @override
  Dio get dio => _client ??= _configureDio();

  PackageInfo get packageInfo => widget.packageInfo;

  Future<void> _closeDependencies() async {
    _client?.close();
  }

  @override
  void dispose() {
    _closeDependencies();
    super.dispose();
  }
}
