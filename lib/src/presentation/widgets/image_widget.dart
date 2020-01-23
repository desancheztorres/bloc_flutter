import 'package:flutter/material.dart';
import 'package:fultter_ultralifestyle/src/presentation/utils/screen_ratio.dart';

//It builds image widget specifying its path,width and height
Widget image(String path, double width, double height) {
  return Image.asset(
    path,
    width: width * ScreenRatio.widthRatio,
    height: height * ScreenRatio.heightRatio,
  );
}
