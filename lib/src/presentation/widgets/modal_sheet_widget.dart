import 'package:flutter/material.dart';
import 'package:fultter_ultralifestyle/src/presentation/utils/capitalize.dart';

import 'text_widget.dart';

void showModalSheetWidget({
  @required context,
  @required color,
  @required title,
  @required message,
  @required size,
}) {
  showModalBottomSheet(
    context: context,
    builder: (builder) {
      return Container(
        height: _calculateSize(size),
        color: color,
        child: ListView(
          children: <Widget>[
            _buildTitle(title),
            SizedBox(
              height: 20,
            ),
            _buildDesc(message),
          ],
        ),
        padding: EdgeInsets.all(40.0),
      );
    },
  );
}

double _calculateSize(Size s) {
  if (s.height <= 568.0) {
    return s.height / 2;
  } else {
    return s.height / 4;
  }
}

Widget _buildTitle(String s) {
  return Center(
    child: text(
      caption: capitalize(s),
      color: Colors.white,
      fontSize: 18.0,
      fontWeight: FontWeight.bold,
    ),
  );
}

Widget _buildDesc(String s) {
  return text(
    caption: capitalize(s),
    color: Colors.white,
  );
}
