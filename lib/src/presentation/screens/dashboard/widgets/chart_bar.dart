import 'package:flutter/material.dart';

class ChartBar extends StatelessWidget {
  final String label;
  final double kcal;
  const ChartBar({
    Key key,
    @required this.label,
    @required this.kcal,
  })  : assert(label != null),
        assert(kcal != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        return Column(
          children: <Widget>[
            SizedBox(height: constraints.maxHeight * 0.05),
            Container(
              height: constraints.maxHeight * 0.6,
              width: 10,
              child: Stack(
                children: <Widget>[
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.white, width: 1.0),
                      color: Color.fromRGBO(220, 220, 220, 1),
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  FractionallySizedBox(
                    heightFactor: kcal,
                    child: Container(
                      decoration: BoxDecoration(
                        color: Theme.of(context).primaryColor,
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                  SizedBox(height: constraints.maxHeight * 0.05),
                ],
              ),
            ),
            SizedBox(height: constraints.maxHeight * 0.09),
            Container(
              height: constraints.maxHeight * 0.15,
              child: FittedBox(
                child: Text(
                  '$label',
                  style: TextStyle(
                    color: Theme.of(context).primaryColor,
                    fontFamily: "Avenir Book",
                    fontSize: 13.0,
                  ),
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
