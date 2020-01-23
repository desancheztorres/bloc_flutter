import 'package:flutter/material.dart';

Widget scheduleCard({
  @required String image,
  @required int day,
  @required String name,
  @required int duration,
  @required handler,
}) {
  return Container(
    child: Card(
      elevation: 2.0,
      child: InkWell(
        onTap: handler,
        child: Row(
          children: <Widget>[
            Container(
              child: Image.asset(image),
            ),
            SizedBox(width: 10.0),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  child: Text(
                    "DAY $day",
                    style: TextStyle(
                      color: Color(0xFFFF8C00),
                      fontSize: 13.0,
                      fontFamily: "Avenir Heavy",
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ),
                SizedBox(height: 5.0),
                Container(
                  child: Text(
                    name,
                    style: TextStyle(
                      fontSize: 17.0,
                      color: Colors.black,
                      fontFamily: "Avenir Heavy",
                    ),
                  ),
                ),
                SizedBox(height: 5.0),
                Container(
                  child: Text(
                    "$duration mins",
                    style: TextStyle(
                      fontSize: 13.0,
                      color: Color(0xFFB7B4B4),
                      fontFamily: "Avenir Book",
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ),
                SizedBox(height: 5.0),
              ],
            ),
          ],
        ),
      ),
    ),
  );
}
