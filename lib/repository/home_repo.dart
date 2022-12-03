import 'package:dio/dio.dart';

class HomeRepo {
  static Future<Response> getHomeData() async {
    final Dio dio = Dio();
    final response = await dio
        .get("https://devfest-portfolio-api-production.up.railway.app/");
    return response;
  }
}
