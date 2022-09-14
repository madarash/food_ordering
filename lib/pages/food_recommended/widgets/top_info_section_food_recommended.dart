import 'package:flutter/material.dart';
import 'package:shop/pages/food_recommended/widgets/widgets.dart';
import 'package:shop/utils/utils.dart';

class TopInfoSectionFoodRecommended extends StatelessWidget {
  final String image;
  const TopInfoSectionFoodRecommended({
    required this.image,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      automaticallyImplyLeading: false,
      title: const TopIconSectionFoodRecommended(),
      bottom: const PreferredSize(
        preferredSize: Size.fromHeight(40),
        child: TitleSectionFoodRecommend(),
      ),
      pinned: true,
      backgroundColor: AppColors.yellowColor,
      expandedHeight: Temp.foodRecommendExpandedHeight,
      flexibleSpace: HeaderImageFoodRecommend(image: image),
    );
  }
}
