

import 'package:flutter/material.dart';

void main() {
  runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            title: const Text("Red & White",
              style: TextStyle(
                fontSize: 25,
                letterSpacing: 3,
                color: Colors.white,
              ),
            ),
            centerTitle: true,
            backgroundColor: Colors.red,
          ),
          body: Center(
            child: RichText(
              text:const TextSpan(
                text: "             G",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.green,
                ),
                children: [
                  TextSpan(
                    text: "R",
                    style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      color: Colors.red,
                    ),
                  ),
                  TextSpan(
                    text: "PHICS",
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.green,
                    ),
                    children: [
                      TextSpan(
                        text: "\n    FLUTT",
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Colors.blue,
                        ),
                      ),
                      TextSpan(
                        text: "E",
                        style: TextStyle(
                          fontSize:40,
                          fontWeight: FontWeight.bold,
                          color: Colors.red,
                          //    height: 4,
                        ),
                        children: [
                          TextSpan(
                            text: "R",
                            style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                              color: Colors.blue,
                            ),
                          ),
                          TextSpan(
                            text: "\n          AN",
                            style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                              color: Colors.green,
                            ),
                            children: [
                              TextSpan(
                                text: "D",
                                style: TextStyle(
                                  fontSize: 40,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.red,
                                  //          height: 4,
                                ),
                              ),
                              TextSpan(
                                text: "ROID  ",
                                style: TextStyle(
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.green,
                                ),
                                children: [
                                  TextSpan(
                                    text: "\nDESIGN",
                                    style: TextStyle(
                                      fontSize: 30,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.yellow,
                                    ),
                                  ),
                                  TextSpan(
                                    text: " & ",
                                    style: TextStyle(
                                      fontSize: 40,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.red,
                                      //            height: 4,
                                    ),
                                    children: [
                                      TextSpan(
                                        text: "DEVELOP",
                                        style: TextStyle(
                                          fontSize: 30,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.yellow,
                                        ),
                                      ),
                                      TextSpan(
                                        text: "\n           W",
                                        style: TextStyle(
                                          fontSize: 40,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.red,
                                          //              height: 4,
                                        ),
                                        children: [
                                          TextSpan(
                                            text: "EB",
                                            style: TextStyle(
                                              fontSize: 30,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.blue,
                                            ),
                                          ),
                                          TextSpan(
                                            text: "\n         FAS",
                                            style: TextStyle(
                                              fontSize: 30,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.yellowAccent,
                                            ),
                                            children: [
                                              TextSpan(
                                                text: "H",
                                                style: TextStyle(
                                                  fontSize: 40,
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.red,
                                                ),
                                              ),
                                              TextSpan(
                                                text: "ION",
                                                style: TextStyle(
                                                  fontSize: 30,
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.yellowAccent,
                                                ),
                                                children: [
                                                  TextSpan(
                                                    text: "\n  ANIMAT",
                                                    style: TextStyle(
                                                      fontSize: 30,
                                                      fontWeight: FontWeight.bold,
                                                      color: Colors.blueGrey,
                                                    ),
                                                  ),
                                                  TextSpan(
                                                    text: "I",
                                                    style: TextStyle(
                                                      fontSize: 40,
                                                      fontWeight: FontWeight.bold,
                                                      color: Colors.red,
                                                    ),
                                                    children: [
                                                      TextSpan(
                                                        text: "ON",
                                                        style: TextStyle(
                                                          fontSize: 30,
                                                          fontWeight: FontWeight.bold,
                                                          color: Colors.blueGrey,
                                                        ),
                                                      ),
                                                      TextSpan(
                                                        text: "\n               I",
                                                        style: TextStyle(
                                                          fontSize: 30,
                                                          fontWeight: FontWeight.bold,
                                                          color: Colors.blue,
                                                        ),
                                                        children: [
                                                          TextSpan(
                                                            text: "T",
                                                            style: TextStyle(
                                                              fontSize: 40,
                                                              fontWeight: FontWeight.bold,
                                                              color: Colors.red,
                                                              //                              height: 4,
                                                            ),
                                                          ),
                                                          TextSpan(
                                                            text: "A-CS+",
                                                            style: TextStyle(
                                                              fontSize: 30,
                                                              fontWeight: FontWeight.bold,
                                                              color: Colors.blue,
                                                            ),
                                                            children: [
                                                              TextSpan(
                                                                text: "\n        GAM",
                                                                style: TextStyle(
                                                                  fontSize: 30,
                                                                  fontWeight: FontWeight.bold,
                                                                  color: Colors.yellow,
                                                                ),
                                                              ),
                                                              TextSpan(
                                                                text: "E",
                                                                style: TextStyle(
                                                                  fontSize: 40,
                                                                  fontWeight: FontWeight.bold,
                                                                  color: Colors.red,
                                                                  //                                height: 4,
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

                                            ],
                                          ),
                                        ],

                                      ),
                                    ],
                                  ),

                                ],
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
          backgroundColor: Colors.black,
        ),
      )
  );
}