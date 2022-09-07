import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shop/bloc/product_bloc.dart';
import 'package:shop/utils/utils.dart';

import 'package:shop/widgets/widgets.dart';

class FoodPageDetails extends StatelessWidget {
  const FoodPageDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: Demensions.screenHeight,
        width: Demensions.screenWigth,
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
            Positioned(
              top: Demensions.screenHeight / 2.5,
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: Demensions.size10),
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
                      width: Demensions.screenWigth,
                      child: const SingleChildScrollView(
                          physics: BouncingScrollPhysics(),
                          child: FoodInfo(
                              text:
                                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore sssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssmagna aliqua. Ut enim ad minim veniam')),
                    ),
                  ],
                ),
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
                    const ButtonAddToCart(),
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
                    PageIcon(
                      icon: Icons.keyboard_arrow_left,
                    ),
                    PageIcon(
                      icon: Icons.close,
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
