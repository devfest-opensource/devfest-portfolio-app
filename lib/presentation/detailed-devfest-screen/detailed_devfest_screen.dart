import 'package:devfest_portfolio_app/entities/home_data_entity.dart';
import 'package:flutter/material.dart';

class DetailedDevfestScreen extends StatelessWidget {
  const DetailedDevfestScreen({super.key, required this.homeDataEntity});
  final HomeDataEntity homeDataEntity;
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text("Previous devfest "),
      ),
    );
  }
}
