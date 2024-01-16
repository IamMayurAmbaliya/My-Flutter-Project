import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Splitter(),
    ),
  );
}

class Splitter extends StatefulWidget {
  const Splitter({super.key});

  @override
  State<Splitter> createState() => _SplitterState();
}

class _SplitterState extends State<Splitter> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double h = size.height;
    double w = size.width;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text(
            "SPLITTER",
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
              color: Colors.white,
              letterSpacing: 10,
            ),
          ),
          backgroundColor: Colors.black,
        ),
        body: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              Expanded(
                child: Container(
                  padding: const EdgeInsets.all(5),
                  color: const Color(0xffff9800),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: Column(
                      children: [
                        Container(
                          height: h * 0.08,
                          width: double.infinity,
                          color: Color(0xffffc107),
                          alignment: Alignment.center,
                          child: Text(
                            "1",
                            style: TextStyle(fontSize: h * 0.025),
                          ),
                        ),
                        SizedBox(
                          height: h * 0.015,
                        ),
                        Container(
                          height: h * 0.08,
                          width: double.infinity,
                          color: Color(0xffffc107),
                          alignment: Alignment.center,
                          child: Text(
                            "2",
                            style: TextStyle(fontSize: h * 0.025),
                          ),
                        ),
                        SizedBox(
                          height: h * 0.015,
                        ),
                        Container(
                          height: h * 0.08,
                          width: double.infinity,
                          color: Color(0xffffc107),
                          alignment: Alignment.center,
                          child: Text(
                            "3",
                            style: TextStyle(fontSize: h * 0.025),
                          ),
                        ),
                        SizedBox(
                          height: h * 0.015,
                        ),
                        Container(
                          height: h * 0.08,
                          width: double.infinity,
                          color: Color(0xffffc107),
                          alignment: Alignment.center,
                          child: Text(
                            "4",
                            style: TextStyle(fontSize: h * 0.025),
                          ),
                        ),
                        SizedBox(
                          height: h * 0.015,
                        ),
                        Container(
                          height: h * 0.08,
                          width: double.infinity,
                          color: Color(0xffffc107),
                          alignment: Alignment.center,
                          child: Text(
                            "5",
                            style: TextStyle(fontSize: h * 0.025),
                          ),
                        ),
                        SizedBox(
                          height: h * 0.015,
                        ),
                        Container(
                          height: h * 0.08,
                          width: double.infinity,
                          color: Color(0xffffc107),
                          alignment: Alignment.center,
                          child: Text(
                            "6",
                            style: TextStyle(fontSize: h * 0.025),
                          ),
                        ),
                        SizedBox(
                          height: h * 0.015,
                        ),
                        Container(
                          height: h * 0.08,
                          width: double.infinity,
                          color: Color(0xffffc107),
                          alignment: Alignment.center,
                          child: Text(
                            "7",
                            style: TextStyle(fontSize: h * 0.025),
                          ),
                        ),
                        SizedBox(
                          height: h * 0.015,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  color: const Color(0xffff5722),
                  padding: const EdgeInsets.all(5),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Container(
                          height: double.infinity,
                          width: h * 0.08,
                          color: const Color(0xff9e9e9e),
                          alignment: Alignment.center,
                          child: Text(
                            "1",
                            style: TextStyle(fontSize: h * 0.025),
                          ),
                        ),
                        SizedBox(
                          width: w * 0.015,
                        ),
                        Container(
                          height: double.infinity,
                          width: h * 0.08,
                          color: const Color(0xff9e9e9e),
                          alignment: Alignment.center,
                          child: Text(
                            "2",
                            style: TextStyle(fontSize: h * 0.025),
                          ),
                        ),
                        SizedBox(
                          width: w * 0.015,
                        ),
                        Container(
                          height: double.infinity,
                          width: h * 0.08,
                          color: const Color(0xff9e9e9e),
                          alignment: Alignment.center,
                          child: Text(
                            "3",
                            style: TextStyle(fontSize: h * 0.025),
                          ),
                        ),
                        SizedBox(
                          width: w * 0.015,
                        ),
                        Container(
                          height: double.infinity,
                          width: h * 0.08,
                          color: const Color(0xff9e9e9e),
                          alignment: Alignment.center,
                          child: Text(
                            "4",
                            style: TextStyle(fontSize: h * 0.025),
                          ),
                        ),
                        SizedBox(
                          width: w * 0.015,
                        ),
                        Container(
                          height: double.infinity,
                          width: h * 0.08,
                          color: const Color(0xff9e9e9e),
                          alignment: Alignment.center,
                          child: Text(
                            "5",
                            style: TextStyle(fontSize: h * 0.025),
                          ),
                        ),
                        SizedBox(
                          width: w * 0.015,
                        ),
                        Container(
                          height: double.infinity,
                          width: h * 0.08,
                          color: const Color(0xff9e9e9e),
                          alignment: Alignment.center,
                          child: Text(
                            "6",
                            style: TextStyle(fontSize: h * 0.025),
                          ),
                        ),
                        SizedBox(
                          width: w * 0.015,
                        ),
                        Container(
                          height: double.infinity,
                          width: h * 0.08,
                          color: const Color(0xff9e9e9e),
                          alignment: Alignment.center,
                          child: Text(
                            "7",
                            style: TextStyle(fontSize: h * 0.025),
                          ),
                        ),
                        SizedBox(
                          width: w * 0.015,
                        ),
                        Container(
                          height: double.infinity,
                          width: h * 0.08,
                          color: const Color(0xff9e9e9e),
                          alignment: Alignment.center,
                          child: Text(
                            "8",
                            style: TextStyle(fontSize: h * 0.025),
                          ),
                        ),
                        SizedBox(
                          width: w * 0.015,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
