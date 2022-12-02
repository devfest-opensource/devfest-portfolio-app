import 'package:devfest_portfolio_app/presentation/home-screen/home_screen.dart';
import 'package:flutter/material.dart';
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
  late final AnimationController _scaleController = AnimationController(
    duration: const Duration(seconds: 2),
    vsync: this,
  )..repeat(reverse: true);
  late final Animation<double> _scaleAnimation = CurvedAnimation(
    parent: _scaleController,
    curve: Curves.fastOutSlowIn,
  );

  @override
  void initState() {
    super.initState();
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 2000),
    );
    rotateController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 2000),
    );
    rotateController.forward();
    animationController.forward();
    _navigateToHomeScreen();
  }

  @override
  void dispose() {
    animationController.dispose();
    rotateController.dispose();
    _scaleController.dispose();
    super.dispose();
  }

  _navigateToHomeScreen() async {
    await Future.delayed(
      const Duration(milliseconds: 3000),
      () {},
    );
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (_) => HomeScreen(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ScaleTransition(
          scale: _scaleAnimation,
          child: AnimatedBuilder(
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
        ),
      ),
    );
  }
}
