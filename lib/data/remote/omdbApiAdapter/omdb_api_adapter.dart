import 'package:moviebox/common/utilities/resource.dart';
import 'package:moviebox/data/model/searchMovie/dto/movie.dart';
import 'package:moviebox/data/model/searchMovie/movie_search_response.dart';
import 'package:moviebox/data/remote/omdbApiAdapter/imovie_api.dart';
import 'package:moviebox/data/remote/omdbApiAdapter/omdb_retrofit_client.dart';
import 'package:moviebox/data/remote/retrofit_helper.dart';

class OmdbApiAdapter implements IMovieApi {
  final OmdbRetrofitClient _omdbRetrofitClient;

  OmdbApiAdapter(this._omdbRetrofitClient);

  @override
  Stream<Resource<Movie>> fetchMovieById(String id) {
    return RetrofitHelper.getStreamResource(() => _omdbRetrofitClient.fetchMovieById(id));
  }

  @override
  Stream<Resource<MovieSearchResponse>> fetchMovieListByTitle(String title) {
    return RetrofitHelper.getStreamResource(() => _omdbRetrofitClient.fetchMovieListByTitle(title));
  }

}