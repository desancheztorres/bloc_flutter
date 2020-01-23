import 'package:flutter/material.dart';

// Screens
import 'package:fultter_ultralifestyle/src/presentation/screens/screens.dart';

class Routes {
  static final Map<String, WidgetBuilder> appRoutes = <String, WidgetBuilder>{
    SigninScreen.routeName: (BuildContext context) => SigninScreen(),
    SignupScreen.routeName: (BuildContext context) => SignupScreen(),
    PasswordResetScreen.routeName: (BuildContext context) =>
        PasswordResetScreen(),
    HomeScreen.routeName: (BuildContext context) => HomeScreen(),
    ScheduleScreen.routeName: (BuildContext context) => ScheduleScreen(),
    SettingsScreen.routeName: (BuildContext context) => SettingsScreen(),
    WorkoutTrackerScreen.routeName: (BuildContext context) =>
        WorkoutTrackerScreen(),
    TrainingInfo.routeName: (BuildContext context) => TrainingInfo(),
    NutritionScreen.routeName: (BuildContext context) => NutritionScreen(),
    TrainingScreen.routeName: (BuildContext context) => TrainingScreen(),
  };
}
