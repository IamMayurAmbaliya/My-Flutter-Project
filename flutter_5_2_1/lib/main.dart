import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text(
            "🤞.MY R&W.🤞",
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Colors.red,
        ),
        body: Center(
          child: RichText(
            text:  TextSpan(
              text: "👉 RED & WHITE...",
              style: TextStyle(
                fontSize: 45,
                fontWeight: FontWeight.bold,
                color: Colors.red,
                letterSpacing: 4,
                decoration: TextDecoration.underline,
              ),
              children: [
                TextSpan(
                  text: "\n   MULTIMEDIA EDUCATION",
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.red,
                    letterSpacing: 8,
                    decoration: TextDecoration.none,
                  ),
                ),
                TextSpan(
                  text: "\nShaping",
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.red,
                    letterSpacing: 6,
                    decoration: TextDecoration.none,
                  ),
                  children: [
                    TextSpan(
                      text:' "Skills"',
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.red,
                        letterSpacing: 6,
                        decoration: TextDecoration.none,
                      ),
                    ),
                    TextSpan(
                      text: "For",
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.red,
                        letterSpacing: 6,
                        decoration: TextDecoration.none,
                      ),
                      children: [
                        TextSpan(
                          text: ' "Scalling"' ,
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.red,
                            letterSpacing: 6,
                            decoration: TextDecoration.none,
                          ),
                        ),
                        TextSpan(
                          text: " higher..!!",
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.red,
                            letterSpacing: 6,
                            decoration: TextDecoration.none,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    ),
  );
}
