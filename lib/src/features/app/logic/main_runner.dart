// ignore_for_file: avoid-ignoring-return-values
import 'dart:async';

import 'package:bloc_concurrency/bloc_concurrency.dart' as bloc_concurrency;
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sentry_flutter/sentry_flutter.dart';
import 'package:test_project_flutter/src/core/base/bloc_observer.dart';
import 'package:test_project_flutter/src/core/constants/environment.dart';
import 'package:test_project_flutter/src/features/app/logic/logger.dart';

typedef AsyncDependencies<D> = Future<D> Function();

typedef AppBuilder<D> = Widget Function(D dependencies);

mixin MainRunner {
  static Future<Widget> _initApp<D>(AsyncDependencies<D> asyncDependencies,
      AppBuilder<D> app, bool isDarkMode) async {
    final dependencies = await asyncDependencies();

    return app(dependencies);
  }

  static Future<void> run<D>({
    required AsyncDependencies<D> asyncDependencies,
    required AppBuilder<D> appBuilder,
  }) async {
    runZonedGuarded<void>(
      () => Logger.runLogging(
        () async {
          WidgetsFlutterBinding.ensureInitialized();

          SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark);

          FlutterError.onError = Logger.logFlutterError;

          if (kReleaseMode) {
            await Sentry.init((p) => p.dsn = kSentryDsn);
          }

          var brightness =
              SchedulerBinding.instance.platformDispatcher.platformBrightness;
          bool isDarkMode = brightness == Brightness.dark;

          final app = await _initApp(asyncDependencies, appBuilder, isDarkMode);

          /// Запуск приложения
          // ignore: deprecated_member_use
          BlocOverrides.runZoned(
            () => runApp(app),

            /// Все ошибки BLoC'ов перенаправляются в Observer
            blocObserver: AppBlocObserver(),

            /// Добавляется чтобы избежать несколько одновременных ивентов
            eventTransformer: bloc_concurrency.sequential<Object?>(),
          );
        },
      ),
      Logger.logZoneError,
    );
  }
}
