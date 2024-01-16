import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: const Text(
              "DARK SHADOW BUTTON",
              style: TextStyle(
                color: Colors.white,
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
            centerTitle: true,
            backgroundColor: Colors.red,
          ),
          body: Align(
            child: Container(
              height: 70,
              width: 150,
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(20),
                boxShadow: const [
                  BoxShadow(
                    spreadRadius: 5,
                    blurRadius: 10,
                    color: Colors.red,
                  ),
                ],
              ),
              alignment: Alignment.center,
              child: const Text(
                "TAP",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                ),
              ),
            ),
          ),
          backgroundColor: Colors.black,
        //   bottomNavigationBar: BottomNavigationBar(
        //     items: const[
        //       BottomNavigationBarItem(
        //         icon: Icon(Icons.home),
        //         label: 'Home',
        //       ),
        //       BottomNavigationBarItem(
        //         icon: Icon(Icons.business),
        //         label: 'Business',
        //       ),
        //       BottomNavigationBarItem(
        //         icon: Icon(Icons.school),
        //         label: 'School',
        //       ),
        //     ],
        //     backgroundColor: Colors.red,
        // ),
      ),
    ),
  )
  ,
  );
}
