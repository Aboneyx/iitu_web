import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:iitu_web/core/platform/network_info.dart';
import 'package:iitu_web/features/app/router/app_router.dart';
import 'package:iitu_web/features/home/data/datasource/club_remote_ds.dart';
import 'package:iitu_web/features/home/data/repository/club_repository.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:shared_preferences/shared_preferences.dart';

final sl = GetIt.instance;

Future<void> initLocator() async {
  ///
  ///
  /// Core
  sl.registerLazySingleton<NetworkInfo>(
    () => NetworkInfoImp(sl()),
  );

  ///
  ///
  /// Repository
  sl.registerLazySingleton<ClubRepository>(
    () => ClubRepositoryImpl(
      // localDS: sl(),
      remoteDS: sl(),
      networkInfo: sl(),
    ),
  );

  ///
  ///
  /// DS
  sl.registerLazySingleton<ClubRemoteDS>(() => ClubRemoteDsImpl());

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
