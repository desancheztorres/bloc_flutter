import 'package:flutter/material.dart';

class ProgressPageIndicator extends AnimatedWidget {
  final PageController pageController;

  final int pageCount;

  final Color primaryColor;

  final Color secondaryColor;

  final num height;

  ProgressPageIndicator({
    @required this.pageController,
    @required this.pageCount,
    @required this.primaryColor,
    @required this.secondaryColor,
    this.height = 2.0,
  }) : super(listenable: pageController);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      child: LinearProgressIndicator(
        backgroundColor: secondaryColor,
        valueColor: Tween(begin: primaryColor, end: primaryColor)
            .animate(kAlwaysCompleteAnimation),
        value: (pageController.page ?? pageController.initialPage) /
            (pageCount - 1),
      ),
    );
  }
}
