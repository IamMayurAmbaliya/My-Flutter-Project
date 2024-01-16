import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.brown,
            centerTitle: true,
            title: Text(
              "MASHAL",
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
          ),
          body: Center(
            child: Container(
              height: 270,
              width: 220,
              decoration: BoxDecoration(
                color: Colors.white,
              ),
              child: Container(
                height: 270,
                width: 220,
                decoration: BoxDecoration(
                  color: Colors.brown,
                  border: Border.symmetric(
                    vertical: const BorderSide(
                      color: Colors.black,
                      width: 50,
                    ),
                    horizontal: BorderSide(
                      color: Colors.brown.shade400,
                      width: 25,
                    ),
                  ),
                ),
                alignment: Alignment(0, -3.35),
                child: Text(
                  "🔥",
                  style: TextStyle(
                    fontSize: 95,
                    color: Color(0xffef804c),
                  ),
                ),
              ),
            ),
          ),
          backgroundColor: Colors.black,
        ),
      ),
    ),
  );
}
