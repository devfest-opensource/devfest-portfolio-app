import 'package:devfest_portfolio_app/presentation/home-screen/widget/side_bar.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: const [
          SideBar(),
          // This is where all the code for rest of Home UI goes.
        ],
      ),
    );
  }
}
