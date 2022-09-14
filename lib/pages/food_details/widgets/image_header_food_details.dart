import 'package:flutter/material.dart';
import 'package:shop/utils/utils.dart';

class ImageHeaderFoodDetails extends StatelessWidget {
  final String imagePopular;
  const ImageHeaderFoodDetails({required this.imagePopular, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 0,
      child: Container(
        height: Demensions.heightTopContainerPageDetails,
        width: Demensions.screenWigth,
        decoration: BoxDecoration(
          image: DecorationImage(
              image: NetworkImage(imagePopular), fit: BoxFit.cover),
        ),
      ),
    );
  }
}
