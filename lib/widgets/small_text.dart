import 'package:flutter/material.dart';
import 'package:shop/utils/utils.dart';

class SmallText extends StatelessWidget {
  final String text;
  final Color color;
  final double size;
  final double height;

  const SmallText({
    Key? key,
    required this.text,
    this.color = AppColors.textColor,
    this.size = 0,
    this.height = 0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: color,
        fontSize: size == 0 ? Demensions.size15 : size,
        height: height == 0 ? Demensions.sizeHeight1 : height,
        fontFamily: 'Roboto',
      ),
    );
  }
}
