import 'package:devfest_portfolio_app/presentation/home-screen/home_screen.dart';
import 'package:flutter/material.dart';

class SplashProvider extends ChangeNotifier {
  navigateToHomeScreen(BuildContext context) async {
    await Future.delayed(const Duration(milliseconds: 1000), () {});
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (context) => const HomeScreen(),
      ),
    );
  }
}
