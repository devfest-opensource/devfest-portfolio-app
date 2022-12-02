import 'package:devfest_portfolio_app/presentation/home-screen/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with TickerProviderStateMixin {
  late AnimationController animationController;
  late AnimationController rotateController;

  @override
  void initState() {
    super.initState();
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1000),
    );
    rotateController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1000),
    );
    rotateController.forward();
    animationController.forward();
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FadeTransition(
      opacity: animationController,
      child: AnimatedSplashScreen(
        splash: AnimatedBuilder(
          animation: rotateController,
          builder: (BuildContext context, Widget? widget) {
            return Transform.rotate(
              angle: rotateController.value * 6.28,
              child: widget,
            );
          },
          child: Image.asset(
            'assets/images/Devfest_logo4.png',
            height: 250.h,
            width: 250.w,
          ),
        ),
        nextScreen: const HomeScreen(),
        backgroundColor: Colors.white,
        splashIconSize: MediaQuery.of(context).size.width,
        duration: 1000,
        splashTransition: SplashTransition.scaleTransition,
      ),
    );
  }
}
