import 'package:flutter/material.dart';

//It builds text widget specifying its text and its styling
Widget text(String text, Color color, double fontSize, String fontFamily,
    FontWeight fontWeight) {
  return Text(text,
      style: TextStyle(
          color: color,
          fontSize: fontSize,
          fontFamily: fontFamily,
          fontWeight: fontWeight));
}
