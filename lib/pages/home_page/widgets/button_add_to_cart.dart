import 'package:flutter/material.dart';
import 'package:shop/utils/utils.dart';
import 'package:shop/pages/home_page/widgets/widgets.dart';

class ButtonAddToCart extends StatelessWidget {
  final double paddingSize;
  final double borderRadius;
  const ButtonAddToCart({
    Key? key,
    this.paddingSize = 0,
    this.borderRadius = 0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        padding:
            EdgeInsets.all(paddingSize == 0 ? Demensions.size15 : paddingSize),
        decoration: BoxDecoration(
          color: AppColors.mainColor,
          borderRadius: BorderRadius.circular(
              borderRadius == 0 ? Demensions.size15 : borderRadius),
        ),
        child:
            BigText(color: AppColors.buttonBackgroundColor, text: Temp.text7),
      ),
    );
  }
}
