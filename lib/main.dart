import 'package:devfest_portfolio_app/presentation/splash-screen/splash_screen.dart';
import 'package:devfest_portfolio_app/providers/providers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: List.from(providers),
      child: ScreenUtilInit(
        designSize: const Size(390, 720),
        splitScreenMode: false,
        builder: (context, child) {
          return MaterialApp(
              title: 'Flutter Demo',
              debugShowCheckedModeBanner: false,
              home: child);
        },
        child: const SplashScreen(),
      ),
    );
  }
}
