import 'package:flutter/material.dart';

class ProgressBar extends StatelessWidget {
  final double percentage;
  final double height;
  final List<Color> colors;
  const ProgressBar({
    Key key,
    @required this.percentage,
    @required this.colors,
    this.height,
  })  : assert(percentage != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
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
                        colors: colors,
                      ),
                    ),
                    width: (constraints.maxWidth * percentage),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
