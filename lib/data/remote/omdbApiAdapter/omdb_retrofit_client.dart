import 'package:dio/dio.dart';
import 'package:moviebox/data/model/searchMovie/movie_search_response.dart';
import 'package:retrofit/dio.dart';
import 'package:retrofit/http.dart';

import '../../model/searchMovie/dto/movie.dart';

part 'omdb_retrofit_client.g.dart';

@RestApi(baseUrl: "http://www.omdbapi.com/?apikey=a5e2db62&")
abstract class OmdbRetrofitClient {
  factory OmdbRetrofitClient(Dio dio, {String? baseUrl}) = _OmdbRetrofitClient;

  @GET("i={id}")
  Future<HttpResponse<Movie>> fetchMovieById(@Path("id") String id);

  @GET("s={title}")
  Future<HttpResponse<MovieSearchResponse>> fetchMovieListByTitle(@Path("title") String title);
}
