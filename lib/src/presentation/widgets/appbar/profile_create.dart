import 'package:flutter/material.dart';

class ProfileCreateAppBar extends AppBar {
  ProfileCreateAppBar({
    Key key,
    @required Widget title,
    @required BuildContext context,
    @required action,
  })  : assert(title != null),
        assert(context != null),
        super(
          key: key,
          title: title,
          backgroundColor: Colors.white,
          iconTheme: IconThemeData(
            color: Color(0xFF291C64),
            size: 8.0,
          ),
          leading: IconButton(
            icon: Icon(
              Icons.close,
            ),
            onPressed: action,
          ),
        );
}
