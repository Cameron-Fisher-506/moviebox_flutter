import 'package:moviebox/common/utilities/resource.dart';
import 'package:moviebox/data/repository/movie_repository.dart';

import '../domain/model/movie.dart';

class FetchMovieListByTitleUseCase {
  final MovieRepository _movieRepository;

  FetchMovieListByTitleUseCase(this._movieRepository);

  Stream<Resource<List<Movie>>> call(String title) async* {
    yield Resource.loading();
    yield* _movieRepository.fetchMovieListByTitle(title);
  }
}