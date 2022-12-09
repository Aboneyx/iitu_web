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
    LauncherRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const Launcher(),
      );
    },
    ClubsListPageRoute.name: (routeData) {
      return MaterialPageX<void>(
        routeData: routeData,
        child: const ClubsListPage(),
      );
    },
  };

  @override
  List<RouteConfig> get routes => [
        RouteConfig(
          LauncherRoute.name,
          path: '/',
        ),
        RouteConfig(
          ClubsListPageRoute.name,
          path: '/clubs-list-page',
        ),
      ];
}

/// generated route for
/// [Launcher]
class LauncherRoute extends PageRouteInfo<void> {
  const LauncherRoute()
      : super(
          LauncherRoute.name,
          path: '/',
        );

  static const String name = 'LauncherRoute';
}

/// generated route for
/// [ClubsListPage]
class ClubsListPageRoute extends PageRouteInfo<void> {
  const ClubsListPageRoute()
      : super(
          ClubsListPageRoute.name,
          path: '/clubs-list-page',
        );

  static const String name = 'ClubsListPageRoute';
}
