import 'package:flutter/material.dart';
import 'package:shop/pages/food_recommended/widgets/widgets.dart';

class BottomSectionFoodRecommended extends StatelessWidget {
  const BottomSectionFoodRecommended({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        CountSectionFoodRecommend(),
        const BottomButtonsFoodRecommend(),
      ],
    );
  }
}
