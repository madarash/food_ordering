import 'package:flutter/material.dart';
import 'package:shop/utils/utils.dart';

class Indicator extends StatelessWidget {
  final bool isActive;
  const Indicator({
    required this.isActive,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 450),
      margin: EdgeInsets.symmetric(horizontal: Demensions.size5),
      width:
          isActive ? Demensions.indicatorActive : Demensions.indicatorNoActive,
      height: Demensions.size8,
      decoration: BoxDecoration(
        color: isActive ? AppColors.mainColor : AppColors.textInfoColor,
        borderRadius: BorderRadius.circular(Demensions.size8),
      ),
    );
  }
}
