import 'package:flutter/material.dart';
import 'dart:developer';
import 'package:quickmart/utills/product.dart';
import 'package:quickmart/view/screens/home_page.dart';

class SubproductPage extends StatefulWidget {
  const SubproductPage({super.key});

  @override
  State<SubproductPage> createState() => _SubproductPageState();
}

class _SubproductPageState extends State<SubproductPage> {
  String CategoryImage = "https://freesvg.org/img/metalmarious_Laptop.png";

  @override
  Widget build(BuildContext context) {
    String cat = ModalRoute.of(context)!.settings.arguments as String;
    Size size = MediaQuery.of(context).size;
    double h = size.height;
    double w = size.width;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.white,
          elevation: 0,
          leading: IconButton(
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.black,
            ),
            onPressed: () {
              Navigator.of(context).popAndPushNamed('Home_page');
            },
          ),
          title: const Text(
            "products",
            style: TextStyle(color: Colors.black),
          ),
        ),
        body: Column(
          children: [
            ...product.map(
              (e) => (e['category'] == cat)
                  ? Container(
                      height: 0.45,
                      width: 0.45,
                      color: Colors.black,
                      margin: const EdgeInsets.all(5),
                    )
                  : Container(
                      height: h * 0.45,
                      width: w * 0.45,
                      margin: const EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: NetworkImage(e['image']),
                        ),
                      ),
                    ),
            ),
          ],
        ),
      ),
    );
  }
}
