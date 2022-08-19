import 'package:flutter/material.dart';
import 'package:shop/utils/utils.dart';

class PageIcon extends StatelessWidget {
  final IconData icon;
  final Color iconColor;
  final Color backGroundColor;
  final double radiusBorder;
  final double paddingSize;
  // final func;

  const PageIcon({
    // required this.func,
    required this.icon,
    this.paddingSize = 0,
    this.radiusBorder = 0,
    this.iconColor = Colors.black,
    this.backGroundColor = AppColors.buttonBackgroundColor,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        padding:
            EdgeInsets.all(paddingSize == 0 ? Demensions.size5 : paddingSize),
        decoration: BoxDecoration(
          color: backGroundColor,
          borderRadius: BorderRadius.circular(
              radiusBorder == 0 ? Demensions.size30 : radiusBorder),
        ),
        child: Icon(
          icon,
          color: iconColor,
        ),
      ),
    );
  }
}
