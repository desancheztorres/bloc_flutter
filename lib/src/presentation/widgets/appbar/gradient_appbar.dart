import 'package:flutter/material.dart';
import 'package:gradient_app_bar/gradient_app_bar.dart';

Widget gradientAppBar() {
  return GradientAppBar(
    gradient: LinearGradient(
      begin: Alignment.topCenter,
      colors: [
        Color(0xFF123D68),
        Color(0xFFA4BDC7),
      ],
    ),
  );
}
