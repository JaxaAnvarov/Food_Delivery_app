import 'package:flutter/material.dart';

class SizeConfig {
  static MediaQueryData? _mediaQueryData;
  static double? screenWidth;
  static double? screenHeight;
  static double? defaultSize;
  static Orientation? orientation;

  static void init(BuildContext context) {
    _mediaQueryData = MediaQuery.of(context);
    screenWidth = _mediaQueryData!.size.width;
    screenHeight = _mediaQueryData!.size.height;
    orientation = _mediaQueryData!.orientation;
    defaultSize = orientation == Orientation.landscape
        ? screenHeight! * 0.024
        : screenWidth! * 0.024;
  }
}

double getFont(double size) {
  
  double defaultsSize = SizeConfig.defaultSize! * size;
  return (defaultsSize / 10);
}

double getHeight(double inputHeight) {
  double screenHeight = SizeConfig.screenHeight!;
  return (inputHeight / 812.0) * screenHeight;
}
Size cSize = SizeConfig._mediaQueryData!.size;


double getWidth(double inputWidth) {
  double screenWidth = SizeConfig.screenWidth!;
  return (inputWidth / 375.0) * screenWidth;
}