import 'package:flutter/material.dart';

import 'package:shop/utils/utils.dart';

import 'package:shop/widgets/widgets.dart';

class FoodPageDeatils extends StatelessWidget {
  const FoodPageDeatils({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: Demensions.screenHeight,
        child: Stack(
          alignment: AlignmentDirectional.bottomCenter,
          children: [
            Positioned(
              top: 0,
              child: Container(
                height: Demensions.heightTopContainerPageDetails,
                width: Demensions.screenWigth,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/image/1.png'),
                      fit: BoxFit.cover),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: Demensions.size20),
              height: Demensions.heightBottomContainerPageDetails,
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
                  const BigText(text: 'SOME TEXT'),
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
                  ),
                  SizedBox(
                    height: Demensions.size20,
                  ),
                  const BigText(text: 'Introduce'),
                  SizedBox(
                    height: Demensions.size20,
                  ),
                  SmallText(
                    height: Demensions.sizeHeight2,
                    text:
                        'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.',
                  ),
                ],
              ),
            ),
            Positioned(
              bottom: 0,
              child: Container(
                width: Demensions.screenWigth,
                height: 100,
                decoration: const BoxDecoration(
                  color: AppColors.mainGreyColor,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          color: AppColors.buttonBackgroundColor,
                          borderRadius:
                              BorderRadius.circular(Demensions.size20)),
                      child: Row(
                        children: [
                          IconButton(
                            padding: EdgeInsets.all(Demensions.size15),
                            onPressed: () {},
                            icon: const Icon(Icons.remove),
                          ),
                          const BigText(text: '0'),
                          IconButton(
                            padding: EdgeInsets.all(Demensions.size15),
                            onPressed: () {},
                            icon: const Icon(Icons.add),
                          ),
                        ],
                      ),
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: Container(
                        padding: EdgeInsets.all(Demensions.size15),
                        decoration: BoxDecoration(
                          color: AppColors.mainColor,
                          borderRadius:
                              BorderRadius.circular(Demensions.size20),
                        ),
                        child: const BigText(
                            color: AppColors.buttonBackgroundColor,
                            text: '\$0.08 Add to cart'),
                      ),
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
