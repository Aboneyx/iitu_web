import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:iitu_web/features/app/launcher.dart';
import 'package:iitu_web/features/auth/ui/profile_page.dart';
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
      ],
    ),

    //
    //
    // Home Section
    AutoRoute<void>(page: ClubsListPage),
    AutoRoute<void>(page: ProfilePage),
  ],
)
class AppRouter extends _$AppRouter {}
