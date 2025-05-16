import 'package:moviebox/data/model/searchMovie/dto/movie.dart' as data_movie;
import 'package:moviebox/domain/model/movie.dart' as domain_movie;

abstract class IMovieMapper {
  List<domain_movie.Movie> mapToDomain(List<data_movie.Movie> movieList);
}