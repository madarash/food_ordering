import 'package:flutter/material.dart';
import 'package:shop/pages/home_page/widgets/widgets.dart';
import 'package:shop/utils/utils.dart';

class InfoSectionFoodRecommended extends StatelessWidget {
  const InfoSectionFoodRecommended({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Container(
        padding: const EdgeInsets.all(15),
        child: Column(
          children: [
            FoodInfo(
              text: Temp.foodRecommend,
            ),
          ],
        ),
      ),
    );
  }
}
