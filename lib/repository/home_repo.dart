import 'dart:developer';

import 'package:dio/dio.dart';

class HomeRepo {
  static Future<Response> getHomeData() async {
    final Dio dio = Dio();
    final response =
        await dio.get("https://devfest-portfolio-api-testing.up.railway.app/");
    log("Home Data : ${response.data}");
    return response;
  }
}
