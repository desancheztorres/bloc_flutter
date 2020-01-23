import 'package:flutter/material.dart';

class SecundaryAppBar extends AppBar {
  final IconButton icon;

  SecundaryAppBar({Key key, this.icon})
      : super(
          key: key,
          backgroundColor: Colors.white,
          elevation: 0,
          leading: icon ?? null,
        );
}
