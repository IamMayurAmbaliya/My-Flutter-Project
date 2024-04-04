import 'package:flutter/material.dart';
import 'package:quickmart/utills/routes.dart';
import 'package:quickmart/view/screens/home_page.dart';
import 'package:quickmart/view/screens/detail_page.dart';
import 'package:quickmart/view/screens/cart_page.dart';
import 'package:quickmart/view/screens/pdf_page.dart';
import 'package:quickmart/view/screens/subproduct.dart';

void main() {
  runApp(
    const QuickMart(),
  );
}

class QuickMart extends StatelessWidget {
  const QuickMart({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        AllRoutes.home_page: (context) => const HomePage(),
        AllRoutes.detail_page: (context) => const DetailPage(),
        AllRoutes.cart_page: (context) => const CartPage(),
        AllRoutes.subproduct: (context) => const SubproductPage(),
        AllRoutes.pdf_page: (context) => const PdfPage(),
      },
    );
  }
}
