import 'package:flutter/material.dart';

class DashboardAppBar extends AppBar {
  DashboardAppBar({
    Key key,
    @required Widget title,
  })  : assert(title != null),
        super(
          key: key,
          title: title,
        );
}
