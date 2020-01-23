import 'package:flutter/material.dart';

class PageHeader extends StatelessWidget {
  final Widget child;
  final List<Color> colors;

  const PageHeader({
    Key key,
    @required this.child,
    @required this.colors,
  })  : assert(child != null),
        assert(colors != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    MediaQueryData _mediaQuery = MediaQuery.of(context);

    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: colors,
          begin: Alignment(-1.0, -3.0),
          end: Alignment(-1.0, 6.0),
        ),
      ),
      height: _mediaQuery.size.height * 0.35,
      child: child,
    );
  }
}
