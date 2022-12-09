import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:iitu_web/features/app/launcher.dart';
import 'package:iitu_web/features/home/presentation/ui/clubs_list_page.dart';

part 'app_router.gr.dart';

@MaterialAutoRouter(
  routes: [
    AutoRoute(
      page: Launcher,
      initial: true,
      // path: '/',
      children: [
        // AutoRoute(
        //   page: EmptyRouterPage,
        //   name: 'BaseMainRouter',
        //   children: [
        //     AutoRoute(
        //       page: MainScreen,
        //       initial: true,
        //     ),
        //     AutoRoute(page: ProductsScreen),
        //   ],
        // ),
        // AutoRoute(
        //   page: EmptyRouterPage,
        //   name: 'BaseCategoriesRouter',
        //   children: [
        //     AutoRoute(
        //       page: CategoriesScreen,
        //       initial: true,
        //     ),
        //     AutoRoute(
        //       page: ProductsScreen,
        //       name: "ProductScreenCategoryRoute"
        //     ),
        //   ],
        // ),
        // AutoRoute(
        //   page: EmptyRouterPage,
        //   name: "BaseEmptyScanTabRouter",
        // ),
        // AutoRoute(
        //   page: EmptyRouterPage,
        //   name: "BaseBasketRouter",
        //   children: [
        //     AutoRoute(
        //       page: BasketScreen,
        //       initial: true,
        //     ),
        //     AutoRoute(page: OrderingScreen),
        //     AutoRoute(page: OrderingResultScreen)
        //   ],
        // ),

        //
        // AutoRoute(page: SectionsPage),
        // AutoRoute(page: ProfilePage),
        // AutoRoute(page: NotAuthBase),
      ],
    ),

    //
    //
    // Home Section
    AutoRoute<void>(page: ClubsListPage),
  ],
)
class AppRouter extends _$AppRouter {}
