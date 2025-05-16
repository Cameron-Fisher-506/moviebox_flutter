import 'package:moviebox/data/dataSource/movie_remote_data_source.dart';
import 'package:moviebox/data/repository/mappers/movieMapper/imovie_mapper.dart';

import '../../common/enum/status.dart';
import '../../common/utilities/resource.dart';
import '../../domain/model/movie.dart';

class MovieRepository {
  final MovieRemoteDataSource _movieRemoteDataSource;
  final IMovieMapper _movieMapper;

  MovieRepository(this._movieRemoteDataSource, this._movieMapper);

  Stream<Resource<List<Movie>>> fetchMovieListByTitle(String title) {
    return _movieRemoteDataSource.fetchMovieListByTitle(title).map((resource) {
      switch(resource.status) {
        case Status.success:
          final data = resource.data;
          if (data != null) {
            final movieList = _movieMapper.mapToDomain(data.movieList);
            return Resource.success(movieList);
          } else {
            return Resource.error("No movies found");
          }
        case Status.error:
          return Resource.error(resource.message);
        case Status.loading:
          return Resource.loading();
      }
    });
  }
}