import 'dart:ui';

import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: Text(
              "Watch",
              style: TextStyle(
                fontSize: 25,
                color: Colors.white,
              ),
            ),
            backgroundColor: Color(0xff3b3556),
          ),
          body: Align(
            child: Container(
              height: 70,
              width: 200,
              decoration: BoxDecoration(
                gradient: const LinearGradient(
                  colors: [
                    Color(0xff4d78ac),
                    Color(0xff2392ec),
                    Color(0xff436da0),
                  ],
                ),
                borderRadius: BorderRadius.circular(20),
              ),
              alignment: Alignment.center,
              child: const Text(
                "Flutter",
                style: TextStyle(
                  fontSize: 24,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          backgroundColor: Color(0xff3b3556),
        ),
      ),
    ),
  );
}
