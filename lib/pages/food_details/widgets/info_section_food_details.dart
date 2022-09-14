import 'package:flutter/material.dart';
import 'package:shop/utils/utils.dart';
import 'package:shop/pages/home_page/widgets/widgets.dart';

class InfoSectionFoodDetails extends StatelessWidget {
  const InfoSectionFoodDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: Demensions.heightPositionInfoSection,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: Demensions.size15),
        height: Demensions.heightBottomContainerPageDetails,
        width: Demensions.screenWigth,
        decoration: const BoxDecoration(
          color: AppColors.buttonBackgroundColor,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: Demensions.size20,
            ),
            BigText(text: Temp.foodDetails),
            SizedBox(
              height: Demensions.size10,
            ),
            const RaitingFoodInfo(),
            SizedBox(
              height: Demensions.size20,
            ),
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
            ),
            SizedBox(
              height: Demensions.size20,
            ),
            BigText(text: Temp.text4),
            SizedBox(
              height: Demensions.size20,
            ),
            SizedBox(
              height: Demensions.heightFoodInfo,
              width: Demensions.screenWigth,
              child: SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                child: FoodInfo(text: Temp.text5),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
