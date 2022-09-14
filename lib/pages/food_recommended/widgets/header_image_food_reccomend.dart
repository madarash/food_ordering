import 'package:flutter/material.dart';

class HeaderImageFoodRecommend extends StatelessWidget {
  final String image;
  const HeaderImageFoodRecommend({
    required this.image,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FlexibleSpaceBar(
      background: Image.network(
        image,
        width: double.maxFinite,
        fit: BoxFit.cover,
      ),
    );
  }
}
