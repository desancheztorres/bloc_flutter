import 'package:flutter/material.dart';

Widget heading6({@required String caption}) {
  return Container(
    child: Text(
      caption,
      style: TextStyle(
        fontSize: 16.0,
        color: Colors.black,
        fontFamily: "SF Pro Text bold",
      ),
    ),
  );
}
