import 'package:flutter/material.dart';

AppBar homeAppBar({
  @required title,
}) {
  return AppBar(
    title: Text(
      title,
      style: TextStyle(
        color: Colors.white,
        fontFamily: "Avenir Heavy",
        fontSize: 27.0,
      ),
    ),
    centerTitle: false,
    elevation: 0.0,
    backgroundColor: Colors.transparent,
    actions: <Widget>[
      IconButton(
        color: Colors.white,
        icon: Icon(Icons.more_horiz),
        onPressed: () {},
      ),
    ],
  );
}
