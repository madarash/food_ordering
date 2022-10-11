import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:shop/router.gr.dart';
import 'package:shop/utils/utils.dart';
import 'package:shop/pages/home_page/widgets/widgets.dart';

class SliderItem extends StatelessWidget {
  final int index;
  final String image;
  const SliderItem({
    Key? key,
    required this.image,
    required this.index,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        GestureDetector(
          onTap: (() {
            context.router.push(FoodRouteRecommended(image: image));
          }),
          child: SliderImageItem(index: index, image: image),
        ),
        Container(
          margin: EdgeInsets.only(
              left: Demensions.size20,
              right: Demensions.size20,
              bottom: Demensions.size20),
          child: SliderTextInfoItem(
            smallTextSize: Demensions.size12,
            iconSize: Demensions.iconSize,
            info: const RaitingFoodInfo(),
          ),
        ),
      ],
    );
  }
}
