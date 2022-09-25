import 'package:dio/dio.dart';
import 'package:eat24/utils/url.dart';

class DioService {
  static final dio = Dio(BaseOptions(baseUrl: Url.baseUrl));
  static Future<dynamic> postMethod(
      {required String url, required value}) async {
    return await dio.post(url, data: value).then((value) => value);
  }

  //return response;
  // static Future<void> getMethod() {
  //   throw UnimplementedError();
  // }

}
