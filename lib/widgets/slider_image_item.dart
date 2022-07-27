import 'package:flutter/material.dart';
import 'package:shop/utils/utils.dart';

class SliderImageItem extends StatelessWidget {
  const SliderImageItem({
    Key? key,
    required this.index,
    required this.image,
  }) : super(key: key);

  final int index;

  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: Demensions.pageViewContainer,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(Demensions.size30),
        color: index.isEven ? AppColors.iconColor1 : AppColors.iconColor2,
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(image),
        ),
      ),
    );
  }
}
