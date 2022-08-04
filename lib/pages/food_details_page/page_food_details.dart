import 'package:flutter/material.dart';

import 'package:shop/utils/utils.dart';

import 'package:shop/widgets/widgets.dart';

class FoodPageDetails extends StatelessWidget {
  const FoodPageDetails({Key? key}) : super(key: key);

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
                  SizedBox(
                    height: Demensions.heightFoodInfo,
                    child: const SingleChildScrollView(
                      child: FoodInfo(
                          text:
                              'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.'),
                    ),
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
                        borderRadius: BorderRadius.circular(Demensions.size20),
                      ),
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
            Positioned(
              top: 0,
              child: Container(
                padding: EdgeInsets.all(Demensions.size20),
                width: Demensions.screenWigth,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    PageIcon(icon: Icons.keyboard_arrow_left),
                    PageIcon(icon: Icons.close)
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
