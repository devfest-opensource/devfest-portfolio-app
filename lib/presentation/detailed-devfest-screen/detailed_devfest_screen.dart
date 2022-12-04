import 'package:devfest_portfolio_app/entities/home_data_entity.dart';
import 'package:devfest_portfolio_app/presentation/detailed-devfest-screen/widgets/event_info.dart';
import 'package:devfest_portfolio_app/presentation/detailed-devfest-screen/widgets/main_card.dart';
import 'package:flutter/material.dart';

import '../home-screen/widgets/side_bar.dart';

class DetailedDevfestScreen extends StatefulWidget {
  const DetailedDevfestScreen({super.key, required this.homeDataEntity});
  final HomeDataEntity homeDataEntity;

  @override
  State<DetailedDevfestScreen> createState() => _DetailedDevfestScreenState();
}

class _DetailedDevfestScreenState extends State<DetailedDevfestScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            const SideBar(),
            const SizedBox(width: 20,),
            SafeArea(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    MainEventCard(homeDataEntity: widget.homeDataEntity,),
                    EventInfo(homeDataEntity: widget.homeDataEntity,),
                  ],
                ),
              ),
            )
          ],
        ),
      )
    );
  }
}
