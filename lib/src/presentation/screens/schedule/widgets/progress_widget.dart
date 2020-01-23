import 'package:flutter/material.dart';

class ProgressWidget extends StatelessWidget {
  final double percentage;
  final double height;
  const ProgressWidget({
    Key key,
    @required this.percentage,
    this.height,
  })  : assert(percentage != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(5.0),
      child: Container(
        width: double.infinity,
        height: height ?? 10.0,
        color: Color(0xFFE3E3E3),
        child: Padding(
          padding: EdgeInsets.all(0),
          child: Row(
            children: <Widget>[
              Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topRight,
                    end: Alignment.bottomLeft,
                    colors: [
                      Color(0xFF4AB4C1),
                      Color(0xFF2A2268),
                    ],
                  ),
                ),
                width: (MediaQuery.of(context).size.width * percentage -
                    (16.5 * 2)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
