import 'package:flutter/material.dart';
import 'package:shop/pages/food_recommended/widgets/widgets.dart';
import 'package:shop/utils/utils.dart';

class FoodPageRecommended extends StatelessWidget {
  final String image;
  const FoodPageRecommended({required this.image, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.buttonBackgroundColor,
      body: CustomScrollView(
        physics: const BouncingScrollPhysics(),
        slivers: [
          TopInfoSectionFoodRecommended(image: image),
          const InfoSectionFoodRecommended(),
        ],
      ),
      bottomNavigationBar: const BottomSectionFoodRecommended(),
    );
  }
}
