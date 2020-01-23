import 'package:flutter/material.dart';
import 'package:fultter_ultralifestyle/src/presentation/widgets/text_widget.dart';

Widget titleBar(String title) {
  return text(
    caption: title.toUpperCase(),
    color: Colors.white,
    fontSize: 18.0,
    fontWeight: FontWeight.bold,
  );
}
