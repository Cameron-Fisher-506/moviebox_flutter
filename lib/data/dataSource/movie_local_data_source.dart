import 'package:moviebox/data/dataSource/base_local_data_source.dart';

import '../model/searchMovie/dto/movie.dart';

class MovieLocalDataSource extends BaseLocalDataSource {
  Future<List<Movie>> getAll() => appDatabase.then((onValue) {
    return onValue.movieDao.getAll();
  });

  Future<int> insert(Movie movie) => appDatabase.then((onValue) {
    return onValue.movieDao.insert(movie);
  });
}