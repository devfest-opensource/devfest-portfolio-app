import 'package:dio/dio.dart';

class PreviousDevfestRepo {
  static Future<Response> getPreviousDevfestData() async {
    final Dio dio = Dio();
    final response = await dio
        .get("https://devfest-portfolio-api-production.up.railway.app/past");

    return response;
  }
}
