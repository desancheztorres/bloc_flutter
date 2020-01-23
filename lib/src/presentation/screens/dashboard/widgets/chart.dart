import 'package:flutter/material.dart';
import 'package:fultter_ultralifestyle/src/presentation/widgets/widgets.dart'
    show ChartBar;

class Chart extends StatelessWidget {
  const Chart({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Flexible(
              fit: FlexFit.tight,
              child: ChartBar(
                label: "Mo",
                kcal: 0.2,
              ),
            ),
            Flexible(
              fit: FlexFit.tight,
              child: ChartBar(
                label: "Tu",
                kcal: 0.3,
              ),
            ),
            Flexible(
              fit: FlexFit.tight,
              child: ChartBar(
                label: "We",
                kcal: 0.4,
              ),
            ),
            Flexible(
              fit: FlexFit.tight,
              child: ChartBar(
                label: "Th",
                kcal: 0.7,
              ),
            ),
            Flexible(
              fit: FlexFit.tight,
              child: ChartBar(
                label: "Fi",
                kcal: 0.1,
              ),
            ),
            Flexible(
              fit: FlexFit.tight,
              child: ChartBar(
                label: "Sa",
                kcal: 0.9,
              ),
            ),
            Flexible(
              fit: FlexFit.tight,
              child: ChartBar(
                label: "Su",
                kcal: 0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
