// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_database.dart';

// **************************************************************************
// FloorGenerator
// **************************************************************************

// ignore: avoid_classes_with_only_static_members
class $FloorAppDatabase {
  /// Creates a database builder for a persistent database.
  /// Once a database is built, you should keep a reference to it and re-use it.
  static _$AppDatabaseBuilder databaseBuilder(String name) =>
      _$AppDatabaseBuilder(name);

  /// Creates a database builder for an in memory database.
  /// Information stored in an in memory database disappears when the process is killed.
  /// Once a database is built, you should keep a reference to it and re-use it.
  static _$AppDatabaseBuilder inMemoryDatabaseBuilder() =>
      _$AppDatabaseBuilder(null);
}

class _$AppDatabaseBuilder {
  _$AppDatabaseBuilder(this.name);

  final String? name;

  final List<Migration> _migrations = [];

  Callback? _callback;

  /// Adds migrations to the builder.
  _$AppDatabaseBuilder addMigrations(List<Migration> migrations) {
    _migrations.addAll(migrations);
    return this;
  }

  /// Adds a database [Callback] to the builder.
  _$AppDatabaseBuilder addCallback(Callback callback) {
    _callback = callback;
    return this;
  }

  /// Creates the database and initializes it.
  Future<AppDatabase> build() async {
    final path = name != null
        ? await sqfliteDatabaseFactory.getDatabasePath(name!)
        : ':memory:';
    final database = _$AppDatabase();
    database.database = await database.open(
      path,
      _migrations,
      _callback,
    );
    return database;
  }
}

class _$AppDatabase extends AppDatabase {
  _$AppDatabase([StreamController<String>? listener]) {
    changeListener = listener ?? StreamController<String>.broadcast();
  }

  MovieDao? _movieDaoInstance;

  Future<sqflite.Database> open(
    String path,
    List<Migration> migrations, [
    Callback? callback,
  ]) async {
    final databaseOptions = sqflite.OpenDatabaseOptions(
      version: 1,
      onConfigure: (database) async {
        await database.execute('PRAGMA foreign_keys = ON');
        await callback?.onConfigure?.call(database);
      },
      onOpen: (database) async {
        await callback?.onOpen?.call(database);
      },
      onUpgrade: (database, startVersion, endVersion) async {
        await MigrationAdapter.runMigrations(
            database, startVersion, endVersion, migrations);

        await callback?.onUpgrade?.call(database, startVersion, endVersion);
      },
      onCreate: (database, version) async {
        await database.execute(
            'CREATE TABLE IF NOT EXISTS `Movie` (`id` TEXT NOT NULL, `title` TEXT NOT NULL, `year` TEXT NOT NULL, `poster` TEXT NOT NULL, `type` TEXT NOT NULL, PRIMARY KEY (`id`))');

        await callback?.onCreate?.call(database, version);
      },
    );
    return sqfliteDatabaseFactory.openDatabase(path, options: databaseOptions);
  }

  @override
  MovieDao get movieDao {
    return _movieDaoInstance ??= _$MovieDao(database, changeListener);
  }
}

class _$MovieDao extends MovieDao {
  _$MovieDao(
    this.database,
    this.changeListener,
  )   : _queryAdapter = QueryAdapter(database),
        _movieInsertionAdapter = InsertionAdapter(
            database,
            'Movie',
            (Movie item) => <String, Object?>{
                  'id': item.id,
                  'title': item.title,
                  'year': item.year,
                  'poster': item.poster,
                  'type': item.type
                }),
        _movieUpdateAdapter = UpdateAdapter(
            database,
            'Movie',
            ['id'],
            (Movie item) => <String, Object?>{
                  'id': item.id,
                  'title': item.title,
                  'year': item.year,
                  'poster': item.poster,
                  'type': item.type
                });

  final sqflite.DatabaseExecutor database;

  final StreamController<String> changeListener;

  final QueryAdapter _queryAdapter;

  final InsertionAdapter<Movie> _movieInsertionAdapter;

  final UpdateAdapter<Movie> _movieUpdateAdapter;

  @override
  Future<List<Movie>> getAll() async {
    return _queryAdapter.queryList('SELECT * FROM Movie',
        mapper: (Map<String, Object?> row) => Movie(
            id: row['id'] as String,
            title: row['title'] as String,
            year: row['year'] as String,
            poster: row['poster'] as String,
            type: row['type'] as String));
  }

  @override
  Future<Movie?> getById(int id) async {
    return _queryAdapter.query('SELECT * FROM Movie WHERE id = ?1',
        mapper: (Map<String, Object?> row) => Movie(
            id: row['id'] as String,
            title: row['title'] as String,
            year: row['year'] as String,
            poster: row['poster'] as String,
            type: row['type'] as String),
        arguments: [id]);
  }

  @override
  Future<int> insert(Movie entity) {
    return _movieInsertionAdapter.insertAndReturnId(
        entity, OnConflictStrategy.ignore);
  }

  @override
  Future<List<int>> insertAll(List<Movie> entityList) {
    return _movieInsertionAdapter.insertListAndReturnIds(
        entityList, OnConflictStrategy.ignore);
  }

  @override
  Future<int> update(Movie entity) {
    return _movieUpdateAdapter.updateAndReturnChangedRows(
        entity, OnConflictStrategy.abort);
  }

  @override
  Future<int> updateAll(List<Movie> entityList) {
    return _movieUpdateAdapter.updateListAndReturnChangedRows(
        entityList, OnConflictStrategy.abort);
  }
}
