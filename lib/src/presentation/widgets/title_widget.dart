import 'package:flutter/material.dart';
import 'package:fultter_ultralifestyle/src/presentation/widgets/text_widget.dart';

Widget title({String caption}) {
  return Container(
    alignment: Alignment.center,
    padding: EdgeInsets.all(10.0),
    color: Colors.red,
    child: text(
      caption: caption.toUpperCase(),
      color: Colors.white,
      fontSize: 20.0,
    ),
  );
}
