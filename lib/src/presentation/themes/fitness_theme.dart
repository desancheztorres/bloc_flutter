import 'package:flutter/material.dart' hide Theme;

// Styles
import 'package:fultter_ultralifestyle/src/presentation/styles/styles.dart'
    show FitnessStyle;

ThemeData fitnessTheme() {
  return ThemeData(
    scaffoldBackgroundColor: Color(0xFFFFFFFF),
    fontFamily: 'SF Pro Text',
    primaryColor: Color(0xFF123D68),
    primaryColorLight: Color(0xFF476796),
    primaryColorDark: Color(0xFF00183d),
    brightness: Brightness.light,
    accentColor: Color(0xFFc5d3e0),
    backgroundColor: Colors.white,
    inputDecorationTheme: InputDecorationTheme(),
    textTheme: TextTheme(
      display1: FitnessStyle.display1,
      display2: FitnessStyle.display2,
      body1: FitnessStyle.body1,
    ),
  );
}
