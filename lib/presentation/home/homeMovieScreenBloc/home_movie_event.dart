
import '../../../data/model/searchMovie/dto/movie.dart';

abstract class HomeMovieEvent {}

class InitState extends HomeMovieEvent {
  InitState();
}

class MoviePressed extends HomeMovieEvent {
  final Movie movie;

  MoviePressed(this.movie);
}