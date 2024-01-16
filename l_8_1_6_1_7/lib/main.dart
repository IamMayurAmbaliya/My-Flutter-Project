import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title:const Text(
              "OPENED DOORS",
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
            backgroundColor: Colors.black,
            centerTitle: true,
          ),
          body: Center(
            child: Container(
              height: 250,
              width: 250,
              decoration:const BoxDecoration(
                color: Colors.black,
                border: Border.symmetric(
                  vertical: BorderSide(
                    color : Color(0xffeeeeee),
                    width: 70,
                  ),
                  horizontal: BorderSide(
                    color: Colors.black,
                    width: 50,
                  ),
                ),
              ),
            ),
          ),
          backgroundColor: Colors.white,
        ),
      ),
    ),
  );
}
