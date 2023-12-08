import 'package:flutter/material.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:test_project_flutter/src/core/dependencies/app_dependecies_scope.dart';
import 'package:test_project_flutter/src/features/app/widget/app_configuration.dart';

class MyTestApp extends StatefulWidget {
  final SharedPreferences sharedPreferences;
  final PackageInfo packageInfo;
  const MyTestApp({
    Key? key,
    required this.sharedPreferences,
    required this.packageInfo,
  }) : super(key: key);

  @override
  State<MyTestApp> createState() => _MyTestAppState();
}

class _MyTestAppState extends State<MyTestApp> {
  @override
  Widget build(BuildContext context) => AppDependenciesScope(
        sharedPreferences: widget.sharedPreferences,
        packageInfo: widget.packageInfo,
        child: const AppConfiguration(),
      );
}
