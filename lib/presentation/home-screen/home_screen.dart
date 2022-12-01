import 'package:devfest_portfolio_app/presentation/home-screen/widgets/side_bar.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: const [
          SideBar(),
          // This is where rest of the home UI will Go.
        ],
      ),
    );
  }
}
