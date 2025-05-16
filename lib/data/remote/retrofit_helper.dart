import 'package:retrofit/dio.dart';

import '../../common/utilities/resource.dart';

class RetrofitHelper {
  static Stream<Resource<T>> getStreamResource<T>(Future<HttpResponse<T>> Function() serviceCall) async* {
    try {
      final data = await serviceCall();
      if (data.response.statusCode == 200) {
        yield Resource.success(data.data);
      } else if (data.response.statusCode == 404) {
        yield Resource.error("Not Found");
      } else if (data.response.statusCode == 500) {
        yield Resource.error("Internal Server Error");
      } else {
        yield Resource.error("Unknown Error");
      }
    } catch (e) {
      yield Resource.error(e.toString());
    }
  }
}