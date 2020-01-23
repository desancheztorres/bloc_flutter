import 'package:flutter/material.dart';
import 'package:fultter_ultralifestyle/src/presentation/utils/awesome_icons_utils.dart';

Widget socialButton({
  @required iconName,
  @required bgColor,
  iconColor,
}) {
  return Container(
    height: 50.0,
    child: RaisedButton(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(25.0),
        // side: BorderSide(color: Colors.red),
      ),
      color: bgColor,
      child: getAwesomeIcon(
        iconName: iconName,
        color: iconColor ?? Colors.white,
      ),
      onPressed: () {},
    ),
  );
}
