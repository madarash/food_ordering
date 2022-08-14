import 'package:flutter/material.dart';
import 'package:shop/utils/utils.dart';
import 'package:shop/widgets/widgets.dart';

class FoodHorizontalItem extends StatelessWidget {
  final String imagePopular;
  final String infoText;
  const FoodHorizontalItem(
      {required this.infoText, required this.imagePopular, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
          vertical: Demensions.size8, horizontal: Demensions.size20),
      child: Row(
        children: [
          Container(
            height: Demensions.sizeImageHorizontalItem,
            width: Demensions.sizeImageHorizontalItem,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(Demensions.size20),
              image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(imagePopular),
              ),
            ),
          ),
          Expanded(
            child: Container(
              height: Demensions.heightSmallContainer,
              padding: EdgeInsets.symmetric(horizontal: Demensions.size10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(Demensions.size20),
                  bottomRight: Radius.circular(Demensions.size20),
                ),
                color: AppColors.buttonBackgroundColor,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  BigText(text: infoText),
                  const SmallText(text: 'some info about meal'),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconAndTextItem(
                        smallTextSize: Demensions.size15,
                        icon: Icons.circle_sharp,
                        text: 'Normal',
                        iconColor: AppColors.yellowColor,
                        iconSize: Demensions.size20,
                        widthSizeBox: 3,
                      ),
                      IconAndTextItem(
                        smallTextSize: Demensions.size15,
                        icon: Icons.location_on,
                        text: '1.7km',
                        iconColor: AppColors.mainColor,
                        iconSize: Demensions.size20,
                        widthSizeBox: 2,
                      ),
                      IconAndTextItem(
                        smallTextSize: Demensions.size15,
                        icon: Icons.access_time_rounded,
                        text: '32m',
                        iconColor: AppColors.iconColor2,
                        iconSize: Demensions.size20,
                        widthSizeBox: 2,
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
