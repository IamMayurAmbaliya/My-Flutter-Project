import 'package:flutter/material.dart';

void main() {
  String mayur = "Red & White";

  Color appBarColor = Colors.yellowAccent;
  Color textColor = Colors.red;
  Color backgroundColor = Colors.black;

  double sizeFont = 45;

  TextStyle textStyle = TextStyle(
    fontSize: sizeFont,
    fontWeight: FontWeight.bold,
    color: textColor,
    decoration: TextDecoration.combine([
      TextDecoration.underline,
    ]),
    decorationStyle: TextDecorationStyle.double,
    decorationColor: Colors.yellow,
  );

  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.menu, color: Colors.black),
        title:const Text(
          "FLUTTER APPLICATION",
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        backgroundColor: appBarColor,
      ),
      body: SafeArea(
        child: Center(
          child: Text(mayur,
            style: textStyle,
          ),
        ),
      ),
      backgroundColor: backgroundColor,
    ),
  ));
}
