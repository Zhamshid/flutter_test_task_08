// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

part of 'app_router.dart';

class _$AppRouter extends RootStackRouter {
  _$AppRouter([GlobalKey<NavigatorState>? navigatorKey]) : super(navigatorKey);

  @override
  final Map<String, PageFactory> pagesMap = {
    LoginScreenRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const LoginScreen(),
      );
    },
    MainTabsRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const MainTabs(),
      );
    },
    HomeRouter.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const EmptyRouterPage(),
      );
    },
    MapsRouter.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const EmptyRouterPage(),
      );
    },
    FavoritesRouter.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const EmptyRouterPage(),
      );
    },
    ProfileRouter.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const EmptyRouterPage(),
      );
    },
    HomeScreenRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const HomeScreen(),
      );
    },
    MapScreenRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const MapScreen(),
      );
    },
    FavoritesScreenRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const FavoritesScreen(),
      );
    },
    ProfileScreenRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const ProfileScreen(),
      );
    },
  };

  @override
  List<RouteConfig> get routes => [
        RouteConfig(
          LoginScreenRoute.name,
          path: 'auth',
        ),
        RouteConfig(
          MainTabsRoute.name,
          path: '/',
          children: [
            RouteConfig(
              HomeRouter.name,
              path: 'home',
              parent: MainTabsRoute.name,
              children: [
                RouteConfig(
                  HomeScreenRoute.name,
                  path: '',
                  parent: HomeRouter.name,
                )
              ],
            ),
            RouteConfig(
              MapsRouter.name,
              path: 'map',
              parent: MainTabsRoute.name,
              children: [
                RouteConfig(
                  MapScreenRoute.name,
                  path: '',
                  parent: MapsRouter.name,
                )
              ],
            ),
            RouteConfig(
              FavoritesRouter.name,
              path: 'favorites',
              parent: MainTabsRoute.name,
              children: [
                RouteConfig(
                  FavoritesScreenRoute.name,
                  path: '',
                  parent: FavoritesRouter.name,
                )
              ],
            ),
            RouteConfig(
              ProfileRouter.name,
              path: 'profile',
              parent: MainTabsRoute.name,
              children: [
                RouteConfig(
                  ProfileScreenRoute.name,
                  path: '',
                  parent: ProfileRouter.name,
                )
              ],
            ),
          ],
        ),
      ];
}

/// generated route for
/// [LoginScreen]
class LoginScreenRoute extends PageRouteInfo<void> {
  const LoginScreenRoute()
      : super(
          LoginScreenRoute.name,
          path: 'auth',
        );

  static const String name = 'LoginScreenRoute';
}

/// generated route for
/// [MainTabs]
class MainTabsRoute extends PageRouteInfo<void> {
  const MainTabsRoute({List<PageRouteInfo>? children})
      : super(
          MainTabsRoute.name,
          path: '/',
          initialChildren: children,
        );

  static const String name = 'MainTabsRoute';
}

/// generated route for
/// [EmptyRouterPage]
class HomeRouter extends PageRouteInfo<void> {
  const HomeRouter({List<PageRouteInfo>? children})
      : super(
          HomeRouter.name,
          path: 'home',
          initialChildren: children,
        );

  static const String name = 'HomeRouter';
}

/// generated route for
/// [EmptyRouterPage]
class MapsRouter extends PageRouteInfo<void> {
  const MapsRouter({List<PageRouteInfo>? children})
      : super(
          MapsRouter.name,
          path: 'map',
          initialChildren: children,
        );

  static const String name = 'MapsRouter';
}

/// generated route for
/// [EmptyRouterPage]
class FavoritesRouter extends PageRouteInfo<void> {
  const FavoritesRouter({List<PageRouteInfo>? children})
      : super(
          FavoritesRouter.name,
          path: 'favorites',
          initialChildren: children,
        );

  static const String name = 'FavoritesRouter';
}

/// generated route for
/// [EmptyRouterPage]
class ProfileRouter extends PageRouteInfo<void> {
  const ProfileRouter({List<PageRouteInfo>? children})
      : super(
          ProfileRouter.name,
          path: 'profile',
          initialChildren: children,
        );

  static const String name = 'ProfileRouter';
}

/// generated route for
/// [HomeScreen]
class HomeScreenRoute extends PageRouteInfo<void> {
  const HomeScreenRoute()
      : super(
          HomeScreenRoute.name,
          path: '',
        );

  static const String name = 'HomeScreenRoute';
}

/// generated route for
/// [MapScreen]
class MapScreenRoute extends PageRouteInfo<void> {
  const MapScreenRoute()
      : super(
          MapScreenRoute.name,
          path: '',
        );

  static const String name = 'MapScreenRoute';
}

/// generated route for
/// [FavoritesScreen]
class FavoritesScreenRoute extends PageRouteInfo<void> {
  const FavoritesScreenRoute()
      : super(
          FavoritesScreenRoute.name,
          path: '',
        );

  static const String name = 'FavoritesScreenRoute';
}

/// generated route for
/// [ProfileScreen]
class ProfileScreenRoute extends PageRouteInfo<void> {
  const ProfileScreenRoute()
      : super(
          ProfileScreenRoute.name,
          path: '',
        );

  static const String name = 'ProfileScreenRoute';
}
