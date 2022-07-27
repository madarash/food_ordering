import 'package:flutter/material.dart';
import 'package:shop/utils/utils.dart';
import 'package:shop/widgets/widgets.dart';

class SliderTextInfoItem extends StatelessWidget {
  final Widget info;
  final double iconSize;
  final double smallTextSize;
  const SliderTextInfoItem({
    required this.smallTextSize,
    required this.iconSize,
    required this.info,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        height: Demensions.pageViewTextContainer,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(Demensions.size30),
          color: AppColors.buttonBackgroundColor,
          boxShadow: const [
            BoxShadow(
              blurRadius: 5,
              color: AppColors.mainGreyColor,
              offset: Offset(0, 5),
            ),
            BoxShadow(
              color: AppColors.buttonBackgroundColor,
              offset: Offset(5, 0),
            ),
            BoxShadow(
              color: AppColors.buttonBackgroundColor,
              offset: Offset(-5, 0),
            )
          ],
        ),
        child: Container(
          padding: EdgeInsets.symmetric(
              horizontal: Demensions.size20, vertical: Demensions.size10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const BigText(text: 'Some Text'),
              info,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconAndTextItem(
                    smallTextSize: smallTextSize,
                    icon: Icons.circle_sharp,
                    text: 'Normal',
                    iconColor: AppColors.yellowColor,
                    iconSize: Demensions.size20,
                    widthSizeBox: Demensions.size10,
                  ),
                  IconAndTextItem(
                    smallTextSize: smallTextSize,
                    icon: Icons.location_on,
                    text: '1.7km',
                    iconColor: AppColors.mainColor,
                    iconSize: Demensions.size20,
                    widthSizeBox: Demensions.size10,
                  ),
                  IconAndTextItem(
                    smallTextSize: smallTextSize,
                    icon: Icons.access_time_rounded,
                    text: '32m',
                    iconColor: AppColors.iconColor2,
                    iconSize: Demensions.size20,
                    widthSizeBox: Demensions.size10,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
