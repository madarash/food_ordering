import 'package:flutter/material.dart';
import 'package:shop/utils/utils.dart';

class PageIcon extends StatelessWidget {
  final IconData icon;
  final Color iconColor;
  final Color backGroundColor;
  const PageIcon({
    required this.icon,
    this.iconColor = Colors.black,
    this.backGroundColor = AppColors.buttonBackgroundColor,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        padding: EdgeInsets.all(Demensions.size5),
        decoration: BoxDecoration(
          color: backGroundColor,
          borderRadius: BorderRadius.circular(Demensions.size30),
        ),
        child: Icon(
          icon,
          color: iconColor,
        ),
      ),
    );
  }
}
