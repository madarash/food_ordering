import 'package:flutter/material.dart';
import 'package:shop/utils/color.dart';

import 'package:shop/widgets/widgets.dart';

class FoodPageBody extends StatefulWidget {
  const FoodPageBody({Key? key}) : super(key: key);

  @override
  State<FoodPageBody> createState() => _FoodPageBodyState();
}

class _FoodPageBodyState extends State<FoodPageBody> {
  var _currantPage = 0;
  PageController pageController = PageController(viewportFraction: 0.8);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 320,
          child: PageView.builder(
            onPageChanged: (index) {
              return setState(() {
                _currantPage = index;
              });
            },
            controller: pageController,
            scrollDirection: Axis.horizontal,
            itemCount: 5,
            itemBuilder: (contex, index) {
              var scale = _currantPage == index ? 1.0 : 0.93;
              return TweenAnimationBuilder(
                duration: const Duration(seconds: 1),
                tween: Tween(begin: scale, end: scale),
                curve: Curves.ease,
                child: SliderItem(index: index),
                builder: (context, value, child) {
                  return Transform.scale(
                    scale: value as double,
                    child: child,
                  );
                },
              );
            },
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ...List.generate(
              5,
              (number) => Indicator(
                isActive: _currantPage == number ? true : false,
              ),
            ),
          ],
        )
      ],
    );
  }
}

class Indicator extends StatelessWidget {
  final bool isActive;
  const Indicator({
    required this.isActive,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 450),
      margin: const EdgeInsets.symmetric(horizontal: 4.0),
      width: isActive ? 22.0 : 8.0,
      height: 8.0,
      decoration: BoxDecoration(
        color: isActive ? AppColors.mainColor : AppColors.paraColor,
        borderRadius: BorderRadius.circular(8),
      ),
    );
  }
}

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
          height: 220,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
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
            height: 140,
            margin: const EdgeInsets.only(left: 20, right: 20, bottom: 20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: AppColors.buttonBackgroundColor,
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
                          (number) => const Icon(
                            Icons.star,
                            color: AppColors.mainColor,
                            size: 15,
                          ),
                        ),
                      ),
                      const SizedBox(width: 10),
                      const SmallText(text: '4.5'),
                      const SizedBox(width: 10),
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
