import 'package:moviebox/data/model/searchMovie/movie_search_response.dart';
import 'package:moviebox/data/remote/omdbApiAdapter/omdb_api_adapter.dart';

import '../../common/utilities/resource.dart';

class MovieRemoteDataSource {
  final OmdbApiAdapter omdbApiAdapter;

  MovieRemoteDataSource(this.omdbApiAdapter);

  Stream<Resource<MovieSearchResponse>> fetchMovieListByTitle(String title) {
    return omdbApiAdapter.fetchMovieListByTitle(title);
  }
}