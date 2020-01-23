import 'package:flutter/material.dart';

// Utils
import 'package:fultter_ultralifestyle/src/presentation/utils/images_path.dart';

// Widgets
import 'package:fultter_ultralifestyle/src/presentation/widgets/widgets.dart'
    show ProgressWidget, ScheduleWidget, SecundaryAppBar, primaryButton;

class ScheduleScreen extends StatelessWidget {
  static const String routeName = "schedule";

  const ScheduleScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> _schedules = [
      {
        "day": 1,
        "title": "Easy Stretch Strength",
        "image": ImagesPath.scheduleImage1,
        "duration": 11,
      },
      {
        "day": 2,
        "title": "Ab Flex",
        "image": ImagesPath.scheduleImage2,
        "duration": 15,
      },
      {
        "day": 3,
        "title": "Neck & Back",
        "image": ImagesPath.scheduleImage3,
        "duration": 10,
      },
      {
        "day": 4,
        "title": "Flexibility",
        "image": ImagesPath.scheduleImage4,
        "duration": 15,
      },
      {
        "day": 5,
        "title": "Chest",
        "image": ImagesPath.scheduleImage5,
        "duration": 18,
      },
    ];

    return Scaffold(
      appBar: SecundaryAppBar(
        icon: IconButton(
          color: Colors.black,
          onPressed: () => Navigator.pop(context),
          icon: Icon(
            Icons.arrow_back,
          ),
        ),
      ),
      body: Container(
        margin: EdgeInsets.all(16.5),
        child: Column(
          children: <Widget>[
            Text(
              "Complete beginners should start here!",
              style: TextStyle(
                fontFamily: "Avenir Book",
                fontSize: 15.0,
                color: Color(0xFF7E7D7D),
                fontWeight: FontWeight.normal,
              ),
              textAlign: TextAlign.center,
            ),
            Text(
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut.",
              style: TextStyle(
                fontFamily: "Avenir Book",
                fontSize: 15.0,
                color: Color(0xFF7E7D7D),
                fontWeight: FontWeight.normal,
              ),
              textAlign: TextAlign.justify,
            ),
            SizedBox(height: 12.0),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Schedule",
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontSize: 24.0,
                  fontFamily: "Avenir Heavy",
                  color: Theme.of(context).primaryColor,
                ),
              ),
            ),
            SizedBox(height: 10.0),
            ProgressWidget(percentage: 0.20),
            SizedBox(height: 27.0),
            Expanded(
              child: Container(
                child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: _schedules.length,
                  itemBuilder: (BuildContext context, int index) {
                    final _schedule = _schedules[index];

                    return Column(
                      children: <Widget>[
                        ScheduleWidget(schedule: _schedule),
                        SizedBox(height: 10.0),
                      ],
                    );
                  },
                ),
              ),
            ),
            SizedBox(height: 20.0),
            primaryButton(
              context: context,
              caption: "Add To Practice",
              submit: () {},
            ),
          ],
        ),
      ),
    );
  }
}
