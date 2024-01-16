import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: const Text(
              "Gradient Button",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
            centerTitle: true,
            backgroundColor: Color.fromRGBO(72, 65, 106, 1),
          ),
          body: Align(
            child: Container(
              alignment: Alignment.center,
              child: Text(
                "Flutter",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              height: 70,
              width: 200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                gradient: LinearGradient(
                  colors: [
                    Color(0xff77A1D3),
                    Color(0xffE684AE)
                  ],
                ),
              ),
            ),
          ),
          backgroundColor: Color.fromRGBO(72, 65, 106, 1),
        ),
      ),
    ),
  );
}
