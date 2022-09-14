import 'package:flutter/material.dart';
import 'package:shop/utils/utils.dart';
import 'package:shop/pages/home_page/widgets/widgets.dart';

class CountSectionFoodRecommend extends StatelessWidget {
  final double price = Temp.price;
  final int count = Temp.count;
  CountSectionFoodRecommend({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          PageIcon(
            paddingSize: Demensions.size15,
            backGroundColor: AppColors.mainColor,
            icon: Icons.remove,
          ),
          BigText(text: '\$ $price  X $count'),
          PageIcon(
            paddingSize: Demensions.size15,
            backGroundColor: AppColors.mainColor,
            icon: Icons.add,
          ),
        ],
      ),
    );
  }
}
