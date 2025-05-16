import 'package:moviebox/data/local/app_database.dart';

abstract class BaseLocalDataSource {
  final Future<AppDatabase> appDatabase = AppDatabase.init();
}