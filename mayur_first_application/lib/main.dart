import 'package:flutter/material.dart';
import 'package:mayur_first_application/view/screens/home_page.dart';
import 'package:mayur_first_application/view/screens/product_details_page.dart';
import 'package:mayur_first_application/view/screens/selected_product.dart';


void main(){
  runApp(
    const Quickmart(),
  );
}

class Quickmart extends StatelessWidget {
  const Quickmart({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/' : (context) => const HomePage(),
        'product_details_page' : (context) => const ProductDetailPage(),
        'selected_product' : (context) => const SelectedProduct(),
      },
    );
  }
}
