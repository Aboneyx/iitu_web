import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:iitu_web/core/services/locator_service.dart';
import 'package:iitu_web/features/app/router/app_router.dart';
import 'package:iitu_web/features/app/router/router_observer.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initLocator();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'IITU Web Programming',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routeInformationParser: sl<AppRouter>().defaultRouteParser(),
      // routerDelegate: sl<AppRouter>().delegate(),
      routerDelegate: AutoRouterDelegate(
        sl<AppRouter>(),
        navigatorObservers: () => [RouterObserver()],
      ),
    );
  }
}
