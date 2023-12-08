import 'package:auto_route/auto_route.dart';
import 'package:auto_route/empty_router_widgets.dart';
import 'package:flutter/material.dart';
import 'package:test_project_flutter/src/features/auth/widget/pages/login.dart';
import 'package:test_project_flutter/src/features/favorites/widget/pages/favorites.dart';
import 'package:test_project_flutter/src/features/home/widget/pages/home.dart';
import 'package:test_project_flutter/src/features/main_tabs/main_tabs.dart';
import 'package:test_project_flutter/src/features/map/widget/pages/map.dart';
import 'package:test_project_flutter/src/features/profile/widget/pages/profile.dart';

part 'app_router.gr.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Screen,Route,Provider',
  routes: [
    AutoRoute(
      page: LoginScreen,
      path: 'auth',
    ),
    AutoRoute(
      page: MainTabs,
      path: '/',
      children: [
        AutoRoute(
          path: 'home',
          name: 'HomeRouter',
          page: EmptyRouterPage,
          children: [
            AutoRoute(
              page: HomeScreen,
              path: '',
            ),
          ],
        ),
        AutoRoute(
          path: 'map',
          name: 'MapsRouter',
          page: EmptyRouterPage,
          children: [
            AutoRoute(
              page: MapScreen,
              path: '',
            ),
          ],
        ),
        AutoRoute(
          path: 'favorites',
          name: 'FavoritesRouter',
          page: EmptyRouterPage,
          children: [
            AutoRoute(
              page: FavoritesScreen,
              path: '',
            ),
          ],
        ),
        AutoRoute(
          path: 'profile',
          name: 'ProfileRouter',
          page: EmptyRouterPage,
          children: [
            AutoRoute(
              page: ProfileScreen,
              path: '',
            ),
          ],
        ),
      ],
    ),
  ],
)

// extend the generated private router
class AppRouter extends _$AppRouter {}
