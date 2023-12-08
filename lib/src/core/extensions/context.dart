import 'package:flutter/material.dart';
import 'package:test_project_flutter/src/core/dependencies/app_dependecies_scope.dart';
import 'package:test_project_flutter/src/core/dependencies/app_dependencies.dart';

// ignore: depend_on_referenced_packages
// import 'package:flutter_gen/gen_l10n/app_localizations.dart';

/// Контекст экстеншны
extension BuildContextX on BuildContext {
  /// Получить MediaQuery через контекст
  MediaQueryData get mediaQuery => MediaQuery.of(this);
  Size get screenSize => mediaQuery.size;

  IAppDependencies get dependencies =>
      AppDependenciesScope.dependenciesOf(this);

  /// Получить тему через контекст
  ThemeData get theme => Theme.of(this);
  TextTheme get textTheme => theme.textTheme;
}
