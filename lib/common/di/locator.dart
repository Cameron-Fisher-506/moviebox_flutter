import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:moviebox/common/manager/navigationManager/navigation_manager.dart';
import 'package:moviebox/data/remote/omdbApiAdapter/omdb_api_adapter.dart';
import 'package:moviebox/data/remote/omdbApiAdapter/omdb_retrofit_client.dart';

GetIt locator = GetIt.instance;

void setUpLocator() {
  locator.registerLazySingleton(() => NavigationManager());

  locator.registerLazySingleton(() => Dio());
  locator.registerLazySingleton(() => OmdbRetrofitClient(locator()));
  locator.registerLazySingleton(() => OmdbApiAdapter(locator()));
}