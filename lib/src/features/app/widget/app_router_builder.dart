import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:test_project_flutter/src/core/extensions/context.dart';
import 'package:test_project_flutter/src/core/widgets/loading.dart';
import 'package:test_project_flutter/src/features/app/router/app_router.dart';

typedef CreateRouter = RootStackRouter Function(BuildContext context);

typedef RouterWidgetBuilder = Widget Function(
  BuildContext context,
  RouteInformationParser<UrlState> informationParser,
  RouterDelegate<UrlState> routerDelegate,
);

@immutable
class AppRouterBuilder extends StatefulWidget {
  final CreateRouter createRouter;
  final RouterWidgetBuilder builder;

  const AppRouterBuilder({
    required this.createRouter,
    required this.builder,
    Key? key,
  }) : super(key: key);

  @override
  State<AppRouterBuilder> createState() => _AppRouterBuilderState();
}

class _AppRouterBuilderState extends State<AppRouterBuilder> {
  late final RootStackRouter router = widget.createRouter(context);

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    router.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => widget.builder(
        context,
        router.defaultRouteParser(),
        router.delegate(
          initialRoutes: <PageRouteInfo>[
            /// Будещем проверяем если у юзера есть токен то на [MainTabsRoute()]
            /// если нет то на [LoginScreenRoute()],
            /// пример показано ниже
            // const LoginScreenRoute(),

            context.dependencies.tokenStorage.hasToken()
                ? const MainTabsRoute()
                : const LoginScreenRoute()
          ],
          placeholder: (BuildContext context) => const Scaffold(
            body: Loading(),
          ),
        ),
      );
}
