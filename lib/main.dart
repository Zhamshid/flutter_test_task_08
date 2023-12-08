import 'package:flutter/material.dart';
import 'package:test_project_flutter/src/features/app/app.dart';
import 'package:test_project_flutter/src/features/app/logic/main_runner.dart';

import 'src/features/app/model/async_app_dependencies.dart';

Future<void> main() {
  WidgetsFlutterBinding.ensureInitialized();
  return MainRunner.run<AsyncAppDependencies>(
    asyncDependencies: AsyncAppDependencies.obtain,
    appBuilder: (dependencies) => MyTestApp(
      sharedPreferences: dependencies.sharedPreferences,
      packageInfo: dependencies.packageInfo,
    ),
  );
}
