import 'dart:developer';

import 'package:devfest_portfolio_app/entities/home_data_entity.dart';
import 'package:devfest_portfolio_app/repository/home_repo.dart';
import 'package:flutter/material.dart';

enum HomeEnum { loading, success }

class HomeProvider extends ChangeNotifier {
  HomeDataEntity? homeDataEntity;
  HomeEnum homeEnum = HomeEnum.loading;
  Future getHomeData() async {
    homeEnum = HomeEnum.loading;
    notifyListeners();
    final response = await HomeRepo.getHomeData();
    if (response.statusCode == 200) {
      homeDataEntity = HomeDataEntity.fromJson(response.data);
      homeEnum = HomeEnum.success;
    } else {
      log("Error fetching data");
    }
    notifyListeners();
  }
}
