import 'package:flutter/material.dart';

Widget text({
  @required String caption,
  Color color,
  double fontSize,
  String fontFamily,
  FontWeight fontWeight,
  TextAlign textAlign,
  TextDecoration textDecoration,
  FontStyle fontStyle,
  double letterSpacing,
  TextOverflow overflow,
  bool softWrap,
}) {
  return Text(
    caption,
    textAlign: textAlign ?? null,
    overflow: overflow ?? null,
    softWrap: softWrap ?? null,
    style: TextStyle(
      color: color ?? Colors.black,
      fontSize: fontSize ?? 14.0,
      fontFamily: fontFamily ?? "OpenSans",
      fontWeight: fontWeight ?? FontWeight.w600,
      decoration: textDecoration ?? TextDecoration.none,
      fontStyle: fontStyle ?? FontStyle.normal,
      letterSpacing: letterSpacing ?? 0.0,
    ),
  );
}
