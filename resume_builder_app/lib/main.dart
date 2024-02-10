import 'package:flutter/material.dart';
import 'package:resume_builder_app/utills/routes.dart';
import 'package:resume_builder_app/view/screens/build_page.dart';
import 'package:resume_builder_app/view/screens/home_page.dart';
import 'package:resume_builder_app/view/screens/splash_screen.dart';

void main(){
  runApp(
    const ResumeApp()
  );
}


class ResumeApp extends StatelessWidget {
  const ResumeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        Routes.splash_screen:(context)=>SplashScreen(),
        Routes.home_page:(context)=>HomePage(),
        Routes.build_page:(context)=>BuildPage(),
      },
    );
  }
}
