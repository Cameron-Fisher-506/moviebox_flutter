import 'package:json_annotation/json_annotation.dart';
import 'package:moviebox/data/model/searchMovie/dto/movie.dart';

part 'movie_search_response.g.dart';

@JsonSerializable(createJsonKeys: true)
class MovieSearchResponse {
  @JsonKey(name: "Search")
  final List<Movie> movieList;

  MovieSearchResponse(this.movieList);

  factory MovieSearchResponse.fromJson(Map<String, dynamic> json) => _$MovieSearchResponseFromJson(json);
  Map<String, dynamic> toJson() => _$MovieSearchResponseToJson(this);
}