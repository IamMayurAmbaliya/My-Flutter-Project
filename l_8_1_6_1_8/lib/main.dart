import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          bottomNavigationBar: Container(
            height: 70,
            width: double.infinity,
            color: Colors.orange,
            alignment: Alignment.center,
            child:const Text(
              "Emoji",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 25,
                color: Colors.white,
              ),
            ),
          ),
          body: Align(
            child: Center(
              child: Container(
                alignment: Alignment.topCenter,
                height: 300,
                width: 300,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(150),
                  color: Colors.orange,
                ),
                child: Container(
                  alignment: Alignment.topCenter,
                  height: 250,
                  width: 250,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(150),
                    color: Colors.white,
                  ),
                  child: Container(
                    alignment: Alignment(0.6, 0),
                    height: 230,
                    width: 260,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(140),
                      color: Colors.orange,
                    ),
                    child: Container(
                      alignment: Alignment(-70, 0),
                      height: 60,
                      width: 60,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(130),
                        color: Colors.white,
                      ),
                      child: Container(
                        alignment: Alignment.bottomCenter,
                        height: 57,
                        width: 57,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    ),
  );
}
