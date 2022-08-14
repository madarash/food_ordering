import 'package:flutter/cupertino.dart';

class Demensions {
  //Screen height and wight
  static double screenHeight =
      MediaQueryData.fromWindow(WidgetsBinding.instance.window).size.height;
  static double screenWigth =
      MediaQueryData.fromWindow(WidgetsBinding.instance.window).size.width;
  //height container items
  static double heightContainer = screenHeight / 3;
  static double pageViewContainer = screenHeight / 4;
  static double pageViewTextContainer = screenHeight / 7;
  //size image in Horizontal Food itemr
  static double sizeImageHorizontalItem = screenHeight / 5.9;
  //size container small image section
  static double heightSmallContainer = screenHeight / 8;
  //size containers food page details
  static double heightTopContainerPageDetails = screenHeight / 2.6;
  static double heightBottomContainerPageDetails = screenHeight / 1.6;
  //  height text
  static double heightText1 = screenHeight / 668.3;
  static double heightText2 = screenHeight / 401;

  //sizes for all items

  static double size5 = screenHeight / 100.7;
  static double size8 = screenHeight / 100.25;
  static double size10 = screenHeight / 80.2;
  static double size12 = screenHeight / 66.8;
  static double size15 = screenHeight / 60.6;
  static double size20 = screenHeight / 40.1;
  static double size30 = screenHeight / 26.7;
  static double size40 = screenHeight / 20.5;
  //indicator for SliderItems
  static double indicatorActive = screenHeight / 36.6;
  static double indicatorNoActive = screenHeight / 100.25;
  //default size for icons
  static double iconSize = screenHeight / 33.4;
  static double iconSmallSize = screenHeight / 66.8;
  // height container food info
  static double heightFoodInfo = screenHeight / 3.75;
}
