import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:shop/router.gr.dart';
import 'package:shop/utils/utils.dart';
import 'package:shop/pages/home_page/widgets/widgets.dart';

class FoodHorizontalItem extends StatelessWidget {
  final String imagePopular;
  final String infoText;

  const FoodHorizontalItem({
    required this.infoText,
    required this.imagePopular,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
          vertical: Demensions.size8, horizontal: Demensions.size20),
      child: GestureDetector(
        onTap: (() => context.router.push(
              FoodRouteDetails(
                imagePopular: imagePopular,
              ),
            )),
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
                    SmallText(text: Temp.text8),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconAndTextItem(
                          smallTextSize: Demensions.size15,
                          icon: Icons.circle_sharp,
                          text: Temp.text1,
                          iconColor: AppColors.yellowColor,
                          iconSize: Demensions.size20,
                          widthSizeBox: Temp.widthSizeBox3,
                        ),
                        IconAndTextItem(
                          smallTextSize: Demensions.size15,
                          icon: Icons.location_on,
                          text: Temp.text2,
                          iconColor: AppColors.mainColor,
                          iconSize: Demensions.size20,
                          widthSizeBox: Temp.widthSizeBox2,
                        ),
                        IconAndTextItem(
                          smallTextSize: Demensions.size15,
                          icon: Icons.access_time_rounded,
                          text: Temp.text3,
                          iconColor: AppColors.iconColor2,
                          iconSize: Demensions.size20,
                          widthSizeBox: Temp.widthSizeBox2,
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
