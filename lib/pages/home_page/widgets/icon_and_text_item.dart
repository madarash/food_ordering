import 'package:flutter/material.dart';
import 'package:shop/pages/home_page/widgets/widgets.dart';

class IconAndTextItem extends StatelessWidget {
  final IconData icon;
  final String text;
  final double smallTextSize;
  final double iconSize;
  final Color iconColor;
  final double widthSizeBox;
  const IconAndTextItem({
    Key? key,
    required this.icon,
    required this.text,
    required this.iconColor,
    required this.smallTextSize,
    required this.iconSize,
    required this.widthSizeBox,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Icon(
          icon,
          color: iconColor,
          size: iconSize,
        ),
        SizedBox(width: widthSizeBox),
        SmallText(
          size: smallTextSize,
          text: text,
        )
      ],
    );
  }
}
