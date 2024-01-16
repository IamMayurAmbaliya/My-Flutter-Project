import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:my_application/utills/home_page_utills.dart';
import 'package:my_application/utills/product.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String cat = "All";

  @override
  void initState() {
    Category.insert(0, "All");
    log("$AllCategory");
    log("$Category");
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double h = size.height;
    double w = size.width;

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "MY APPLICATION",
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.w400,
            color: Colors.black,
          ),
        ),
        backgroundColor: Color(0xffaa14f0),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  ...Category.map(
                    (e) => GestureDetector(
                      onTap: () {
                        setState(() {
                          cat = e;
                          log(cat);
                        });
                      },
                      child: Container(
                        height: h * 0.055,
                        width: w * 0.30,
                        margin: const EdgeInsets.all(5),
                        padding: const EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          color: (cat == e)
                              ? Color(0xffaa14f0)
                              : Color(0xfff2f2f2),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        alignment: Alignment.center,
                        child: Text(
                          e.toString().replaceFirst(
                              e[0], e[0].toString().toUpperCase()),
                          style: TextStyle(
                            fontSize: h * 0.02,
                            color: (cat == e) ? Colors.white : Colors.black,
                            fontWeight: (cat == e)
                                ? FontWeight.bold
                                : FontWeight.w400,
                            letterSpacing: 3,
                          ),
                        ),
                      ),
                    ),
                  ).toList(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
