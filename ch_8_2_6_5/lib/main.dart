import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: const Text(
              "An Indian Flag",
              style: TextStyle(
                fontSize: 30,
                color: Colors.white,
              ),
            ),
            backgroundColor: Colors.blueAccent,
            centerTitle: true,
          ),
          body: Align(
            child: Container(
              width: 250,
              height: 150,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Colors.orange,
                    Colors.white,
                    Colors.white,
                    Colors.green,
                  ],
                  stops: [0.3,0.45,0.55,0.7],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
              ),
              alignment: Alignment(0, 0.25),
              child: Text("*",
              style: TextStyle(
                fontSize: 50,
                color: Colors.blueAccent,
              ),),
            ),
          ),
          backgroundColor: Colors.blueAccent,
        ),
      ),
    ),
  );
}
