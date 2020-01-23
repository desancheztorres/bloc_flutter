import 'package:flutter/material.dart';

BoxDecoration boxDecoration({
  @required String image,
  @required ColorFilter colorFilter,
  @required BoxFit fit,
  @required Color color,
}) {
  return BoxDecoration(
    image: DecorationImage(
      image: AssetImage(
        image,
      ),
      colorFilter: colorFilter,
      fit: fit, //to fill full background
    ),
    color: color,
  );
}
