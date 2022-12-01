import 'package:devfest_portfolio_app/presentation/home-screen/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:page_transition/page_transition.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      splash: Image.asset(
        'assets/Devfest_logo4.png',
        height: 250.h,
        width: 250.w,
      ),
      nextScreen: const HomeScreen(),
      backgroundColor: Colors.white,
      splashIconSize: MediaQuery.of(context).size.width,
      duration: 2000,
      splashTransition: SplashTransition.rotationTransition,
      pageTransitionType: PageTransitionType.leftToRightWithFade,
    );
  }
}
