import 'package:flutter/material.dart';
import 'package:fultter_ultralifestyle/src/presentation/screens/dashboard/widgets/day_widget.dart'
    show DayWidget;

class DayCalendar extends StatelessWidget {
  const DayCalendar({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Flexible(
          fit: FlexFit.tight,
          child: DayWidget(
            weekday: "Mo",
            day: 14,
          ),
        ),
        Flexible(
          fit: FlexFit.tight,
          child: DayWidget(
            weekday: "Tu",
            day: 15,
            isActive: true,
          ),
        ),
        Flexible(
          fit: FlexFit.tight,
          child: DayWidget(
            weekday: "We",
            day: 16,
          ),
        ),
        Flexible(
          fit: FlexFit.tight,
          child: DayWidget(
            weekday: "Th",
            day: 17,
          ),
        ),
        Flexible(
          fit: FlexFit.tight,
          child: DayWidget(
            weekday: "Fi",
            day: 18,
          ),
        ),
        Flexible(
          fit: FlexFit.tight,
          child: DayWidget(
            weekday: "Sa",
            day: 19,
          ),
        ),
        Flexible(
          fit: FlexFit.tight,
          child: DayWidget(
            weekday: "Su",
            day: 20,
          ),
        ),
      ],
    );
  }
}
