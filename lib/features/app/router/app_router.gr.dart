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
    ProfilePageRoute.name: (routeData) {
      return MaterialPageX<void>(
        routeData: routeData,
        child: const ProfilePage(),
      );
    },
    ClubDetailPageRoute.name: (routeData) {
      final args = routeData.argsAs<ClubDetailPageRouteArgs>();
      return MaterialPageX<void>(
        routeData: routeData,
        child: ClubDetailPage(
          key: args.key,
          club: args.club,
        ),
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
        RouteConfig(
          ProfilePageRoute.name,
          path: '/profile-page',
        ),
        RouteConfig(
          ClubDetailPageRoute.name,
          path: '/club-detail-page',
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

/// generated route for
/// [ProfilePage]
class ProfilePageRoute extends PageRouteInfo<void> {
  const ProfilePageRoute()
      : super(
          ProfilePageRoute.name,
          path: '/profile-page',
        );

  static const String name = 'ProfilePageRoute';
}

/// generated route for
/// [ClubDetailPage]
class ClubDetailPageRoute extends PageRouteInfo<ClubDetailPageRouteArgs> {
  ClubDetailPageRoute({
    Key? key,
    required ClubDTO club,
  }) : super(
          ClubDetailPageRoute.name,
          path: '/club-detail-page',
          args: ClubDetailPageRouteArgs(
            key: key,
            club: club,
          ),
        );

  static const String name = 'ClubDetailPageRoute';
}

class ClubDetailPageRouteArgs {
  const ClubDetailPageRouteArgs({
    this.key,
    required this.club,
  });

  final Key? key;

  final ClubDTO club;

  @override
  String toString() {
    return 'ClubDetailPageRouteArgs{key: $key, club: $club}';
  }
}
