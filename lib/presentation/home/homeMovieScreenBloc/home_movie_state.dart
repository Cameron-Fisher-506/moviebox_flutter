import '../../../domain/model/movie.dart';

sealed class HomeMovieState {
  HomeMovieState();
}

class MovieListState extends HomeMovieState {
  final bool isLoading;
  final List<Movie> movieList;
  final String errorMessage;

  MovieListState({
    this.isLoading = false,
    this.movieList = const [],
    this.errorMessage = "",
  });
}
