import 'package:flutter/material.dart';

Widget buildSnackbar(
    String text, Color bgColor, Color textColor, Duration duration) {
  return SnackBar(
    content: Text(
      text,
      style: TextStyle(color: textColor, fontSize: 15.0),
      textAlign: TextAlign.center,
    ),
    backgroundColor: bgColor,
    duration: duration,
  );
}
