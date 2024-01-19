import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Bolt(),
    ),
  );
}

class Bolt extends StatefulWidget {
  const Bolt({super.key});

  @override
  State<Bolt> createState() => _BoltState();
}

class _BoltState extends State<Bolt> {
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
            "BOLT",
            style: TextStyle(letterSpacing: 25, color: Colors.white),
          ),
          backgroundColor: Colors.black,
        ),
        body: Container(
          height: double.infinity,
          width: double.infinity,
          color: Colors.black,
          child: Row(
            children: [
              Expanded(
                flex: 2,
                child: Container(
                  color: Color(0xffffc107),
                ),
              ),
              Expanded(
                child: Container(
                    color: Color(0xff000000),
                    child: Center(
                      child: Text(
                        "⚡",
                        style:
                            TextStyle(color: Colors.white, fontSize: h * 0.07),
                      ),
                    )),
              ),
              Expanded(
                flex: 2,
                child: Container(
                  color: Color(0xffffc107),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
