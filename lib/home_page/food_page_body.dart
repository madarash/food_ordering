import 'package:flutter/material.dart';
import 'package:shop/utils/demensions.dart';

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
          height: Demensions.heightContainer,
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
              var scale = _currantPage == index
                  ? Demensions.transformActiveSize
                  : Demensions.transformNoActiveSize;
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
        SizedBox(height: Demensions.size10),
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
