import 'package:flutter/material.dart';

class Sizeconfig {
  late MediaQueryData _mediaQueryData;
  static double screenWidth = 0;
  static double screenHeight = 0;
  static double defaultSize = 0;
  late Orientation orientation;

  void init(BuildContext context) {
    _mediaQueryData = MediaQuery.of(context);
    screenWidth = _mediaQueryData.size.width;
    screenHeight = _mediaQueryData.size.height;
    orientation = _mediaQueryData.orientation;
  }
}

//Get the proportionate height as per screen size
double getProportionateScreenHeight(double inputHeight) {
  double screenHeight = Sizeconfig.screenHeight;
  //812 is the layout  height thta desigher use
  return (inputHeight / 812.0) * screenHeight;
}

//Get the proportionate width as per screen size
double getProportionateScreenWidth(double inputWidth) {
  double screenWidth = Sizeconfig.screenWidth;
  //812 is the layout  height thta desigher use
  return (inputWidth / 375.0) * screenWidth;
}
