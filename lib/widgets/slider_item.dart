import 'package:flutter/material.dart';
import 'package:shop/utils/utils.dart';
import 'package:shop/widgets/widgets.dart';

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
        SliderImageItem(index: index, image: image),
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
        const SmallText(text: '4.5'),
        SizedBox(width: Demensions.size10),
        const SmallText(text: '1000 comments'),
      ],
    );
  }
}
