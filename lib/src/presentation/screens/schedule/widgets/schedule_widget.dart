import 'package:flutter/material.dart';

class ScheduleWidget extends StatelessWidget {
  final schedule;
  const ScheduleWidget({
    Key key,
    @required this.schedule,
  })  : assert(schedule != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(0.0),
      ),
      child: Container(
        child: Row(
          children: <Widget>[
            Container(
              width: 80,
              height: 78,
              child: Image.asset(
                schedule["image"],
              ),
            ),
            SizedBox(width: 20.0),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  child: Text(
                    "DAY ${schedule["day"]}",
                    style: TextStyle(
                      color: Theme.of(context).primaryColor,
                      fontSize: 13.0,
                      fontFamily: "Avenir Heavy",
                    ),
                  ),
                ),
                SizedBox(height: 2.0),
                Container(
                  child: Text(
                    schedule["title"],
                    style: TextStyle(
                      color: Colors.black,
                      fontFamily: "Avenir Heavy",
                      fontSize: 17.0,
                    ),
                  ),
                ),
                SizedBox(height: 5.0),
                Container(
                  child: Text(
                    "${schedule["duration"]} mins",
                    style: TextStyle(
                      color: Color(0xFFB7B4B4),
                      fontSize: 13.0,
                      fontFamily: "Avenir Book",
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
