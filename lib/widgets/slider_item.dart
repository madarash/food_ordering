import 'package:flutter/material.dart';
import 'package:shop/utils/color.dart';
import 'package:shop/utils/demensions.dart';
import 'package:shop/widgets/widgets.dart';

class SliderItem extends StatelessWidget {
  final int index;
  const SliderItem({
    Key? key,
    required this.index,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: Demensions.pageViewContainer,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(Demensions.size30),
            color: index.isEven ? AppColors.iconColor1 : AppColors.iconColor2,
            image: const DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage('assets/image/1.png'),
            ),
          ),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            height: Demensions.pageViewTextContainer,
            margin: EdgeInsets.only(
                left: Demensions.size20,
                right: Demensions.size20,
                bottom: Demensions.size20),
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
              padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const BigText(text: 'Some Text'),
                  Row(
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
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      IconAndTextWidget(
                        icon: Icons.circle_sharp,
                        text: 'Normal',
                        iconColor: AppColors.yellowColor,
                      ),
                      IconAndTextWidget(
                        icon: Icons.location_on,
                        text: '1.7km',
                        iconColor: AppColors.mainColor,
                      ),
                      IconAndTextWidget(
                        icon: Icons.access_time_rounded,
                        text: '32m',
                        iconColor: AppColors.iconColor2,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
