import 'package:flutter/material.dart';
import 'package:shop/utils/utils.dart';

class BigText extends StatelessWidget {
  final String text;
  final Color color;
  final double size;
  final TextOverflow overFlow;
  const BigText({
    Key? key,
    required this.text,
    this.size = 0,
    this.color = AppColors.mainBlackColor,
    this.overFlow = TextOverflow.ellipsis,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      overflow: overFlow,
      maxLines: 1,
      style: TextStyle(
        color: color,
        fontSize: size == 0 ? Demensions.size20 : size,
        fontWeight: FontWeight.w400,
        fontFamily: 'Roboto',
      ),
    );
  }
}
