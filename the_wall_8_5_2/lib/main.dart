import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: TheWall(),
    ),
  );
}

class TheWall extends StatefulWidget {
  const TheWall({super.key});

  @override
  State<TheWall> createState() => _TheWallState();
}

class _TheWallState extends State<TheWall> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double h = size.height;
    double w = size.width;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text(
            "THE WALL",
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
              letterSpacing: 15,
              color: Colors.white,
            ),
          ),
          backgroundColor: Colors.black,
        ),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              SizedBox(
                height: h * 0.020,
              ),
              Row(
                children: [
                  Container(
                    height: h * 0.10,
                    width: w * 0.33,
                    color: Color(0xff5d4037),
                  ),
                  SizedBox(width: w * 0.05),
                  Container(
                    height: h * 0.10,
                    width: w * 0.25,
                    color: Color(0xff5d4037),
                  ),
                  SizedBox(width: w * 0.05),
                  Container(
                    height: h * 0.10,
                    width: w * 0.32,
                    color: Color(0xff5d4037),
                  ),
                ],
              ),
              SizedBox(
                height: h * 0.020,
              ),
              Row(
                children: [
                  Container(
                    height: h * 0.10,
                    width: w * 0.25,
                    color: Color(0xff5d4037),
                  ),
                  SizedBox(width: w * 0.05),
                  Container(
                    height: h * 0.10,
                    width: w * 0.4,
                    color: Color(0xff5d4037),
                  ),
                  SizedBox(width: w * 0.05),
                  Container(
                    height: h * 0.10,
                    width: w * 0.25,
                    color: Color(0xff5d4037),
                  ),
                ],
              ),
              SizedBox(
                height: h * 0.020,
              ),
              Row(
                children: [
                  Container(
                    height: h * 0.10,
                    width: w * 0.33,
                    color: Color(0xff5d4037),
                  ),
                  SizedBox(width: w * 0.05),
                  Container(
                    height: h * 0.10,
                    width: w * 0.25,
                    color: Color(0xff5d4037),
                  ),
                  SizedBox(width: w * 0.05),
                  Container(
                    height: h * 0.10,
                    width: w * 0.32,
                    color: Color(0xff5d4037),
                  ),
                ],
              ),
              SizedBox(
                height: h * 0.020,
              ),
              Row(
                children: [
                  Container(
                    height: h * 0.10,
                    width: w * 0.25,
                    color: Color(0xff5d4037),
                  ),
                  SizedBox(width: w * 0.05),
                  Container(
                    height: h * 0.10,
                    width: w * 0.4,
                    color: Color(0xff5d4037),
                  ),
                  SizedBox(width: w * 0.05),
                  Container(
                    height: h * 0.10,
                    width: w * 0.25,
                    color: Color(0xff5d4037),
                  ),
                ],
              ),
              SizedBox(
                height: h * 0.020,
              ),
              Row(
                children: [
                  Container(
                    height: h * 0.10,
                    width: w * 0.33,
                    color: Color(0xff5d4037),
                  ),
                  SizedBox(width: w * 0.05),
                  Container(
                    height: h * 0.10,
                    width: w * 0.25,
                    color: Color(0xff5d4037),
                  ),
                  SizedBox(width: w * 0.05),
                  Container(
                    height: h * 0.10,
                    width: w * 0.32,
                    color: Color(0xff5d4037),
                  ),
                ],
              ),
              SizedBox(
                height: h * 0.020,
              ),
              Row(
                children: [
                  Container(
                    height: h * 0.10,
                    width: w * 0.25,
                    color: Color(0xff5d4037),
                  ),
                  SizedBox(width: w * 0.05),
                  Container(
                    height: h * 0.10,
                    width: w * 0.4,
                    color: Color(0xff5d4037),
                  ),
                  SizedBox(width: w * 0.05),
                  Container(
                    height: h * 0.10,
                    width: w * 0.25,
                    color: Color(0xff5d4037),
                  ),
                ],
              ),
              SizedBox(
                height: h * 0.020,
              ),
              Row(
                children: [
                  Container(
                    height: h * 0.10,
                    width: w * 0.33,
                    color: Color(0xff5d4037),
                  ),
                  SizedBox(width: w * 0.05),
                  Container(
                    height: h * 0.10,
                    width: w * 0.25,
                    color: Color(0xff5d4037),
                  ),
                  SizedBox(width: w * 0.05),
                  Container(
                    height: h * 0.10,
                    width: w * 0.32,
                    color: Color(0xff5d4037),
                  ),
                ],
              ),
              SizedBox(
                height: h * 0.020,
              ),
              Row(
                children: [
                  Container(
                    height: h * 0.10,
                    width: w * 0.25,
                    color: Color(0xff5d4037),
                  ),
                  SizedBox(width: w * 0.05),
                  Container(
                    height: h * 0.10,
                    width: w * 0.4,
                    color: Color(0xff5d4037),
                  ),
                  SizedBox(width: w * 0.05),
                  Container(
                    height: h * 0.10,
                    width: w * 0.25,
                    color: Color(0xff5d4037),
                  ),
                ],
              ),
              SizedBox(
                height: h * 0.020,
              ),
              Row(
                children: [
                  Container(
                    height: h * 0.10,
                    width: w * 0.33,
                    color: Color(0xff5d4037),
                  ),
                  SizedBox(width: w * 0.05),
                  Container(
                    height: h * 0.10,
                    width: w * 0.25,
                    color: Color(0xff5d4037),
                  ),
                  SizedBox(width: w * 0.05),
                  Container(
                    height: h * 0.10,
                    width: w * 0.32,
                    color: Color(0xff5d4037),
                  ),
                ],
              ),
              SizedBox(
                height: h * 0.020,
              ),
              Row(
                children: [
                  Container(
                    height: h * 0.10,
                    width: w * 0.25,
                    color: Color(0xff5d4037),
                  ),
                  SizedBox(width: w * 0.05),
                  Container(
                    height: h * 0.10,
                    width: w * 0.4,
                    color: Color(0xff5d4037),
                  ),
                  SizedBox(width: w * 0.05),
                  Container(
                    height: h * 0.10,
                    width: w * 0.25,
                    color: Color(0xff5d4037),
                  ),
                ],
              ),
              SizedBox(
                height: h * 0.020,
              ),
              Row(
                children: [
                  Container(
                    height: h * 0.10,
                    width: w * 0.33,
                    color: Color(0xff5d4037),
                  ),
                  SizedBox(width: w * 0.05),
                  Container(
                    height: h * 0.10,
                    width: w * 0.25,
                    color: Color(0xff5d4037),
                  ),
                  SizedBox(width: w * 0.05),
                  Container(
                    height: h * 0.10,
                    width: w * 0.32,
                    color: Color(0xff5d4037),
                  ),
                ],
              ),
              SizedBox(
                height: h * 0.020,
              ),
              Row(
                children: [
                  Container(
                    height: h * 0.10,
                    width: w * 0.25,
                    color: Color(0xff5d4037),
                  ),
                  SizedBox(width: w * 0.05),
                  Container(
                    height: h * 0.10,
                    width: w * 0.4,
                    color: Color(0xff5d4037),
                  ),
                  SizedBox(width: w * 0.05),
                  Container(
                    height: h * 0.10,
                    width: w * 0.25,
                    color: Color(0xff5d4037),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
