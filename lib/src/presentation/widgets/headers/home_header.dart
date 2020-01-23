import 'package:flutter/material.dart';

class HomeHeader extends StatelessWidget {
  final List<Color> colors;

  const HomeHeader({
    Key key,
    @required this.colors,
  })  : assert(colors != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: colors,
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
        ),
      ),
      height: MediaQuery.of(context).size.height / 3,
      width: double.infinity,
    );
  }
}
