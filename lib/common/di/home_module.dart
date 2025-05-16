
import 'package:moviebox/common/di/locator.dart';
import 'package:moviebox/data/dataSource/movie_remote_data_source.dart';
import 'package:moviebox/data/repository/mappers/movieMapper/imovie_mapper.dart';
import 'package:moviebox/data/repository/mappers/movieMapper/movie_mapper.dart';
import 'package:moviebox/data/repository/movie_repository.dart';
import 'package:moviebox/domain/fetch_movie_list_by_title_use_case.dart';
import 'package:moviebox/presentation/home/home_movie_flow_manager.dart';

void setUpHomeModule() {
  locator.registerFactory(() => MovieRemoteDataSource(locator()));

  locator.registerFactory<IMovieMapper>(() => MovieMapper());
  locator.registerFactory(() => MovieRepository(locator(), locator()));

  locator.registerFactory(() => FetchMovieListByTitleUseCase(locator()));

  locator.pushNewScope(
    init: (instance) {
      locator.registerLazySingleton(() => HomeMovieFlowManager());
    }
  );
}