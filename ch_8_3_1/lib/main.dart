import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: OpenCloseDoors(),
    ),
  );
}

class OpenCloseDoors extends StatefulWidget {
  const OpenCloseDoors({Key? key}) : super(key: key);

  @override
  State<OpenCloseDoors> createState() => _OpenCloseDoorsState();
}

class _OpenCloseDoorsState extends State<OpenCloseDoors> {
  double x = 50;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Open - Close Doors"),
        backgroundColor: Colors.grey.shade900,
      ),
      body: Center(
        child: Ink(
          decoration: BoxDecoration(
            color: Colors.black,
            border: Border.symmetric(
              vertical: BorderSide(
                color: Colors.grey.shade400,
                width: x,
              ),
              horizontal: const BorderSide(
                color: Colors.black,
                width: 50,
              ),
            ),
          ),
          child: InkWell(
            onTap: () {
              setState(
                () {
                  if (x > 60) {
                    x -= 20;
                  }
                },
              );
            },
            onDoubleTap: () {
              setState(
                () {
                  if (x < 80) {
                    x += 20;
                  }
                },
              );
            },
            child: Container(
              height: 360,
              width: 230,
            ),
          ),
        ),
      ),
    );
  }
}
