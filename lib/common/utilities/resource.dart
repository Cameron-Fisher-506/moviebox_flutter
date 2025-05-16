import '../enum/status.dart';

class Resource<T> {
  final Status status;
  final T? data;
  final String? message;

  Resource._(this.status, this.data, this.message);

  static Resource<T> loading<T>() {
    return Resource._(Status.loading, null, null);
  }

  static Resource<T> success<T>(T? data) {
    return Resource._(Status.success, data, null);
  }

  static Resource<T> error<T>(String? message) {
    return Resource._(Status.error, null, message);
  }
}
