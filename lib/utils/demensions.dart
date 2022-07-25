import 'package:get/get.dart';

class Demensions {
  //802
  static double? screenHeight = Get.context?.height;
  static double? screenWigth = Get.context?.width;

  static double heightContainer = screenHeight! / 3;
  static double pageViewContainer = screenHeight! / 4;
  static double pageViewTextContainer = screenHeight! / 7;

  static double size5 = screenHeight! / 100.7;
  static double size8 = screenHeight! / 100.25;
  static double size10 = screenHeight! / 80.2;
  static double size12 = screenHeight! / 66.8;
  static double size15 = screenHeight! / 60.6;
  static double size20 = screenHeight! / 40.1;
  static double size30 = screenHeight! / 26.7;
  static double size40 = screenHeight! / 20.5;

  static double indicatorActive = screenHeight! / 36.6;
  static double indicatorNoActive = screenHeight! / 100.25;

  static double transformActiveSize = screenHeight! / screenHeight!;
  static double transformNoActiveSize = screenHeight! / 862.4;
}
