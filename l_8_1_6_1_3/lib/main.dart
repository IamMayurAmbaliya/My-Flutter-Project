import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: Text(
              "Mix-up",
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            backgroundColor: Colors.red,
          ),
          body: Center(
            child: Container(
              height: 500,
              width: 5000,
              color: Colors.blue,
                alignment: Alignment.bottomRight,
              child: Container(
                height: 420,
                width: 420,
                color: Colors.yellow,
                alignment: Alignment.bottomRight,
                child: Container(
                  height: 350,
                  width: 350,
                  color: Colors.pink,
                  alignment: Alignment.topLeft,
                  child: Container(
                    height: 300,
                    width: 300,
                    color: Color(0xffff9800),
                    alignment: Alignment.topLeft,
                    child: Container(
                      height: 250,
                      width: 250,
                      color: Colors.green,
                      alignment: Alignment.center,
                      child: Container(
                        height: 200,
                        width: 200,
                        color: Color(0xff64ffda),
                      ),
                    ),
                  ),
                ),
              )
            ),
          ),
        ),
      ),
    ),
  );
}
