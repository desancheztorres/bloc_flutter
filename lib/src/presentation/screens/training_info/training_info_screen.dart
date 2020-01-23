import 'package:flutter/material.dart';

// Content
import 'package:fultter_ultralifestyle/src/presentation/screens/training_info/training_info_content.dart';

class TrainingInfo extends StatelessWidget {
  static const String routeName = "trainingInfo";
  const TrainingInfo({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
      body: TrainingInfoContent(),
    );
  }
}
