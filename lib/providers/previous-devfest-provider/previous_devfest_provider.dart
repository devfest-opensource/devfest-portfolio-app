import 'dart:developer';

import 'package:devfest_portfolio_app/entities/home_data_entity.dart';
import 'package:devfest_portfolio_app/repository/previous_devfest_repo.dart';
import 'package:flutter/material.dart';

enum PreviousDevfestEnum { loading, success }

class PreviousDevfestProvider extends ChangeNotifier {
  List<HomeDataEntity>? previousDevfestList;
  PreviousDevfestEnum previousDevfestEnum = PreviousDevfestEnum.loading;
  Future getPreviousDevfestData() async {
    previousDevfestEnum = PreviousDevfestEnum.loading;
    notifyListeners();
    final response = await PreviousDevfestRepo.getPreviousDevfestData();
    if (response.statusCode == 200) {
      previousDevfestList = previousDevfestDataEntityFromJson(response.data);
      log("Previous: ${previousDevfestList!.first.date}");
      previousDevfestEnum = PreviousDevfestEnum.success;
    } else {
      log("Error fetching data");
    }
    notifyListeners();
  }
}
