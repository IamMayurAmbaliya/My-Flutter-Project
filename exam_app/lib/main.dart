import 'package:flutter/material.dart';
import 'package:exam_app/view/screens/home_page.dart';
import 'package:exam_app/view/screens/detail_page.dart';
import 'package:exam_app/view/screens/cart_page.dart';
import 'package:exam_app/utills/routes.dart';

void main() {
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        Routes.home_page: (context) => const HomePage(),
        Routes.detail_page: (context) => const DetailPage(),
        Routes.cart_page: (context) => const CartPage(),
      },
    );
  }
}
