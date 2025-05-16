import 'package:moviebox/data/model/searchMovie/dto/movie.dart' as data_movie;
import 'package:moviebox/data/repository/mappers/movieMapper/imovie_mapper.dart';
import 'package:moviebox/domain/model/movie.dart' as domain_movie;

class MovieMapper extends IMovieMapper {
  @override
  List<domain_movie.Movie> mapToDomain(List<data_movie.Movie> movieList) {
    return movieList.map((movie) {
      return domain_movie.Movie(
        id: movie.id,
        title: movie.title,
        year: movie.year,
        poster: movie.poster,
        type: movie.type
      );
    }).toList();
  }
}