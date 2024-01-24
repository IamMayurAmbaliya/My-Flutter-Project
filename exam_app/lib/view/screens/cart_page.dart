import 'package:exam_app/main.dart';
import 'package:exam_app/utills/products.dart';
import 'package:exam_app/utills/routes.dart';
import 'package:exam_app/view/screens/cart_page.dart';
import 'package:flutter/material.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double h = size.height;
    double w = size.width;
    return SafeArea(
      child: Scaffold(),
    );
  }
}
