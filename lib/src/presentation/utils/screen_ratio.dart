//It determines screen ratio for different screen sizes for proper display of contents

class ScreenRatio {
  static double heightRatio;
  static double widthRatio;
  static double screenHeight;
  static double screenWidth;

  static setScreenRatio(double currentScreenHeight, double currentScreenWidth) {
    screenHeight = currentScreenHeight;
    screenWidth = currentScreenWidth;
    heightRatio = currentScreenHeight / 667.0;
    widthRatio = currentScreenWidth / 375.0;
  }
}
