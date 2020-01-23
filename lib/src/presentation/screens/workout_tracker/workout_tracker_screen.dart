import 'package:flutter/material.dart';
import 'package:fultter_ultralifestyle/src/presentation/screens/workout_tracker/workout_tracker_content.dart';

// Widgets
import 'package:fultter_ultralifestyle/src/presentation/widgets/widgets.dart'
    show SecundaryAppBar;

class WorkoutTrackerScreen extends StatelessWidget {
  static const String routeName = "workoutTracker";

  const WorkoutTrackerScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _appBar = SecundaryAppBar(
      icon: IconButton(
        icon: Icon(
          Icons.close,
          color: Colors.black,
        ),
        onPressed: () {},
      ),
    );

    return Scaffold(
      appBar: _appBar,
      body: WorkoutTrackerContent(
        appBarSize: _appBar.preferredSize.height,
      ),
    );
  }
}
