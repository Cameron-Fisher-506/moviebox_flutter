import 'package:floor/floor.dart';

abstract class BaseDao<T> {
  @Insert(onConflict: OnConflictStrategy.ignore)
  Future<int> insert(T entity);

  @Insert(onConflict: OnConflictStrategy.ignore)
  Future<List<int>> insertAll(List<T> entityList);

  @Update()
  Future<int> update(T entity);

  @Update()
  Future<int> updateAll(List<T> entityList);
}