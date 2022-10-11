import 'package:flutter/material.dart';
import 'package:shop/pages/home_page/widgets/widgets.dart';
import 'package:shop/utils/utils.dart';

class RaitingFoodInfo extends StatelessWidget {
  const RaitingFoodInfo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Wrap(
          children: List.generate(
            5,
            (number) => Icon(
              Icons.star,
              color: AppColors.mainColor,
              size: Demensions.size15,
            ),
          ),
        ),
        SizedBox(width: Demensions.size10),
        SmallText(text: Temp.text12),
        SizedBox(width: Demensions.size10),
        SmallText(text: Temp.text13),
      ],
    );
  }
}
