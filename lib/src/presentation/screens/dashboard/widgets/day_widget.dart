import 'package:flutter/material.dart';

class DayWidget extends StatelessWidget {
  final int day;
  final String weekday;
  final bool isActive;
  const DayWidget({
    Key key,
    @required this.day,
    @required this.weekday,
    this.isActive = false,
  })  : assert(day != null),
        assert(weekday != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        child: Column(
          children: <Widget>[
            Container(
              child: Text(
                "$weekday".toUpperCase(),
                style: TextStyle(
                  color: Color(0xFF131927),
                  fontSize: 9.0,
                  fontFamily: "Roboto Medium",
                ),
              ),
            ),
            SizedBox(height: 10.0),
            ClipRRect(
              borderRadius: BorderRadius.circular(30.0),
              child: Container(
                color: isActive ? Color(0xFFFF8B00) : Colors.white,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    day.toString(),
                    style: TextStyle(
                      color: isActive ? Colors.white : Color(0xFF131927),
                      fontSize: 12.0,
                      fontFamily: "Roboto Medium",
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
