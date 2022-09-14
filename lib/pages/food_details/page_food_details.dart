import 'package:flutter/material.dart';
import 'package:shop/pages/food_details/widgets/widgets.dart';
import 'package:shop/utils/utils.dart';

class FoodPageDetails extends StatelessWidget {
  final String imagePopular;
  const FoodPageDetails({required this.imagePopular, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: Demensions.screenHeight,
        width: Demensions.screenWigth,
        child: Stack(
          alignment: AlignmentDirectional.bottomCenter,
          children: [
            ImageHeaderFoodDetails(
              imagePopular: imagePopular,
            ),
            const InfoSectionFoodDetails(),
            const BottomSection(),
            const IconSectionFoodDeatils(),
          ],
        ),
      ),
    );
  }
}
