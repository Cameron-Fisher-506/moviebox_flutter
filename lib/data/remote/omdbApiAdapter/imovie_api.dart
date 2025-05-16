import 'package:moviebox/data/model/searchMovie/movie_search_response.dart';

import '../../../common/utilities/resource.dart';
import '../../model/searchMovie/dto/movie.dart';

abstract class IMovieApi {
  Stream<Resource<Movie>> fetchMovieById(String id);
  Stream<Resource<MovieSearchResponse>> fetchMovieListByTitle(String title);
}