import 'package:floor/floor.dart';
import 'package:moviebox/data/local/base_dao.dart';
import 'package:moviebox/data/model/searchMovie/dto/movie.dart';

@dao
abstract class MovieDao extends BaseDao<Movie> {
  @Query("SELECT * FROM Movie")
  Future<List<Movie>> getAll();

  @Query("SELECT * FROM Movie WHERE id = :id")
  Future<Movie?> getById(int id);
}