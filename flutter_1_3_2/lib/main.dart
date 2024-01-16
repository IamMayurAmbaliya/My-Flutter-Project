import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.menu),
        title: const Text("Flutter App"),
        centerTitle: true,
        backgroundColor: Colors.red,
        elevation: 0,
      ),
      body: const Center(
        child: Text(
          "Red and White Multimedia Education\n is one of the best Web Design Training Institute \nin Surat having advance Web design course module. Students who are taking \nweb design classes from us are extremely satisfied.",
          style: TextStyle(
            fontSize: 30,
            color: Colors.red,
            fontStyle: FontStyle.italic,
            decorationColor: Colors.red,
            overflow: TextOverflow.ellipsis,
          ),
        ),
      ),
    ),
  ));
}
