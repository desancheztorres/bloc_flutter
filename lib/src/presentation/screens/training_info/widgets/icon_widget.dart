import 'package:flutter/material.dart';
import 'package:fultter_ultralifestyle/src/presentation/utils/icons_utils.dart';

Widget iconInfo({
  @required String icon,
  @required String caption,
  @required int value,
  @required Color color,
}) {
  return Row(
    children: <Widget>[
      Container(
        width: 28.0,
        height: 28.0,
        color: color,
        child: getIcon(
          iconName: icon,
          color: Colors.white,
          size: 20.0,
        ),
      ),
      SizedBox(width: 10.0),
      Container(
        child: Column(
          children: <Widget>[
            Text(
              caption,
              style: TextStyle(
                fontSize: 13.0,
                fontFamily: "Avenir Book",
                color: Color(0xFFA4A2A2),
              ),
            ),
            Text(
              value.toString(),
              style: TextStyle(
                fontSize: 17.0,
                fontFamily: "Avenir Book",
                color: Color(0xFF3C3C3C),
              ),
            ),
          ],
        ),
      )
    ],
  );
}
