import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          backgroundColor: Color(0xff7cb342),
          appBar: AppBar(
            title: Text(
              "MY APP",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            backgroundColor: Color(0xff8bc34a),
            centerTitle: true,
          ),
          body: Center(
            child: Container(
              alignment: Alignment.center,
              height: 300,
              width: 300,
              decoration: BoxDecoration(
                color: Color(0xffb2ff59),
                border: Border.all(
                  width: 20,
                  color: Color(0xff4caf50),
                ),
              ),
              child: Text(
                "oooo",
                style: TextStyle(
                  fontSize: 180,
                  letterSpacing: -55,
                ),
              ),
            ),
          ),
        ),
      ),
    ),
  );
}
