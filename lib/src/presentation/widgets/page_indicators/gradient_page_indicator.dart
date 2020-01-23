import 'package:flutter/material.dart';

class GradientPageIndicator extends AnimatedWidget {
  final PageController pageController;

  final int pageCount;

  final Color primaryColor;

  final Color secondaryColor;

  final num height;

  GradientPageIndicator({
    @required this.pageController,
    @required this.pageCount,
    @required this.primaryColor,
    @required this.secondaryColor,
    this.height = 2.0,
  }) : super(listenable: pageController);

  @override
  Widget build(BuildContext context) {
    double pagePosition =
        (pageController.page ?? pageController.initialPage) / (pageCount - 1);
    double alignPosition = pagePosition * 2 - 1;

    print("PagePosition: $pagePosition, alignPosition: $alignPosition");

    return Container(
      height: height,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [primaryColor, secondaryColor],
          begin: Alignment(alignPosition - 0.0001, 0),
          end: Alignment(alignPosition + 0.0001, 0),
        ),
      ),
    );
  }
}
