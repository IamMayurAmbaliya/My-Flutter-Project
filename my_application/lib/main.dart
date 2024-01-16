import 'package:flutter/material.dart';
import 'package:my_application/view/screens/home_page.dart';

void main() {
  runApp(
    const myApp(),
  );
}

class myApp extends StatelessWidget {
  const myApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/' : (context) => const HomePage(),
      },
    );
  }
}