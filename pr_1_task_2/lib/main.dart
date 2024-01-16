import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            "📃 List Of Fruits",
            style: TextStyle(
              color: Colors.black,
            ),
          ),
          backgroundColor: Colors.green,
          centerTitle: true,
          elevation: 5,
        ),
        body: Center(
          child: RichText(
            text: const TextSpan(
              text: "🍎 Apple",
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold,
                color: Colors.red,
                letterSpacing: 4,
              ),
              children: [
                TextSpan(
                  text: "\n🍇 Grapes",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 40,
                    color: Colors.blue,
                    letterSpacing: 4,
                  ),
                ),
                TextSpan(
                  text: "\n🍒 Cherry",
                  style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                    color: Colors.red,
                    letterSpacing: 4,
                  ),
                  children: [
                    TextSpan(
                      text: "\n🍓 Strawberry",
                      style: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                        color: Colors.pink,
                        letterSpacing: 4,
                      ),
                    ),
                    TextSpan(
                      text: "\n🥭 Mango",
                      style: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                        color: Colors.yellowAccent,
                        letterSpacing: 4,
                      ),
                      children: [
                        TextSpan(
                          text: "\n🍍 Pineapple",
                          style: TextStyle(
                            fontSize: 40,
                            fontWeight: FontWeight.bold,
                            color: Colors.green,
                            letterSpacing: 4,
                          ),
                        ),
                        TextSpan(
                          text: "\n🍋 Lemon",
                          style: TextStyle(
                            fontSize: 40,
                            fontWeight: FontWeight.bold,
                            color: Colors.yellow,
                            letterSpacing: 4,
                          ),
                          children: [
                            TextSpan(
                              text: "\n🍉 Watermelon",
                              style: TextStyle(
                                fontSize: 40,
                                fontWeight: FontWeight.bold,
                                color: Colors.greenAccent,
                                letterSpacing: 4,
                              ),
                            ),
                            TextSpan(
                              text: "\n🥥 Coconut",
                              style: TextStyle(
                                fontSize: 40,
                                fontWeight: FontWeight.bold,
                                color: Colors.brown,
                                letterSpacing: 4,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        backgroundColor: Colors.white,
      ),
    ),
  );
}
