import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:iitu_web/features/app/router/app_router.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:shared_preferences/shared_preferences.dart';

final sl = GetIt.instance;

Future<void> initLocator() async {
  _externals();
}

Future<void> _externals() async {
  ///
  ///
  /// External
  final sharedPreferences = await SharedPreferences.getInstance();
  sl.registerLazySingleton(() => sharedPreferences);
  sl.registerLazySingleton(() => Dio());
  // sl.registerLazySingleton(() => DioWrapper(sl()));
  sl.registerLazySingleton(() => InternetConnectionChecker());
  sl.registerLazySingleton(() => AppRouter());
}