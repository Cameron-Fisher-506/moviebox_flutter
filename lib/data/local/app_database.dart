import 'dart:async';

import 'package:floor/floor.dart';
import 'package:sqflite/sqflite.dart' as sqflite;
import '../model/searchMovie/dto/movie.dart';
import 'movie_dao.dart';

part 'app_database.g.dart';

@Database(version: 1, entities: [Movie])
abstract class AppDatabase extends FloorDatabase {
  MovieDao get movieDao;

  static Future<AppDatabase> init() async {
    return await $FloorAppDatabase.databaseBuilder("app_database.db").build();
  }
}