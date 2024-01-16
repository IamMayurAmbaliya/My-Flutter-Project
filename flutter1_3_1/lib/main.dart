import 'package:flutter/material.dart';

void main(){
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        top: true,
          child: Text("\n\nHELL0 \n\n\n\nDART \n\n\n\nFLUTTER",
          textAlign: TextAlign.center,),
      ),
    ),
  );
}