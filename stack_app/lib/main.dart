import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: stackApp(),
    ),
  );
}

class stackApp extends StatefulWidget {
  const stackApp({super.key});

  @override
  State<stackApp> createState() => _stackAppState();
}

class _stackAppState extends State<stackApp> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double h = size.height;
    double w = size.width;

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            "STACK APP",
            style: TextStyle(fontSize: h * 0.03, color: Colors.black),
          ),
          backgroundColor: Colors.white,
          elevation: 0,
        ),
        body: Padding(
          padding: const EdgeInsets.all(15),
          child: Stack(
            children: [
              Container(
                height: h * 0.15,
                width: w * 0.30,
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: Colors.purple,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Text(
                  "Purple",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: h * 0.02,
                  ),
                ),
              ),
              Positioned(
                top: 35,
                left: 30,
                child: Container(
                  height: h * 0.15,
                  width: w * 0.30,
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: Colors.indigo,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Text(
                    "Indigo",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: h * 0.02,
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 70,
                left: 60,
                child: Container(
                  height: h * 0.15,
                  width: w * 0.30,
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: Colors.lightBlue,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Text(
                    "LightBlue",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: h * 0.02,
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 100,
                left: 90,
                child: Container(
                  height: h * 0.15,
                  width: w * 0.30,
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Text(
                    "Green",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: h * 0.02,
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 130,
                left: 120,
                child: Container(
                  height: h * 0.15,
                  width: w * 0.30,
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: Colors.amber,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Text(
                    "Amber",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: h * 0.02,
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 160,
                left: 150,
                child: Container(
                  height: h * 0.15,
                  width: w * 0.30,
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: Colors.redAccent,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Text(
                    "RedAccent",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: h * 0.02,
                    ),
                  ),
                ),
              ),
              Positioned(
                child: Container(),
              )
            ],
          ),
        ),
      ),
    );
  }
}
