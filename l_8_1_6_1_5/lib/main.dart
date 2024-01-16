import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title:const Text(
              "LETTER  COVER",
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                letterSpacing: 2,
                color: Colors.white,
              ),
            ),
            centerTitle: true,
            backgroundColor: Colors.green,
          ),
          body:Center(
            child: Container(
              height: 300,
              width: 300,
              decoration:const BoxDecoration(
                color: Colors.green,
                border: Border.symmetric(
                  horizontal: BorderSide(
                    width: 130,
                    color: Color(0xff72c075),
                  ),
                  vertical: BorderSide(
                    width: 130,
                    color: Colors.green,
                  )
                )
              ),
            ),
          ),
        ),
      ),
    ),
  );
}
