import 'package:clock_app/utills/globals/routes.dart';
import 'package:clock_app/view/screens/clock_page/clock_page.dart';
import 'package:clock_app/view/screens/home_page/home_page.dart';
import 'package:clock_app/view/screens/splash_screen/splash_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    const MyClock(),
  );
}

class MyClock extends StatefulWidget {
  const MyClock({super.key});

  @override
  State<MyClock> createState() => _MyClockState();
}

class _MyClockState extends State<MyClock> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        Routes.splashscreen: (context) => const SplashScreen(),
        Routes.homepage: (context) => const HomePage(),
        Routes.clockpage: (context) => const ClockPage(),
      },
    );
  }
}
