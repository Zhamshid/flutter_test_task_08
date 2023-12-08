import 'package:flutter/material.dart';
import 'package:test_project_flutter/src/core/res/resources.dart';
import 'package:test_project_flutter/src/features/app/router/app_router.dart';
import 'package:test_project_flutter/src/features/app/widget/app_router_builder.dart';

@immutable
class AppConfiguration extends StatelessWidget {
  const AppConfiguration({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppRouterBuilder(
      createRouter: (context) => AppRouter(),
      builder: (_, parser, delegate) => MaterialApp.router(
        debugShowCheckedModeBanner: false,

        routeInformationParser: parser,

        routerDelegate: delegate,

        theme: AppTheme.light,
        // ),
      ),
    );
  }
}
