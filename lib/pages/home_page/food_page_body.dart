import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shop/bloc/product_bloc.dart';

import 'package:shop/utils/utils.dart';

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
    return BlocBuilder<ProductBloc, ProductState>(
      builder: (context, state) {
        if (state is ProductLoadedState) {
          return Column(
            children: [
              SizedBox(
                height: Demensions.heightContainer,
                child: PageView.builder(
                  onPageChanged: (index) {
                    return setState(
                      () {
                        _currantPage = index;
                      },
                    );
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
                      child: SliderItem(
                          index: index, image: state.loadedProducts[index].url),
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
              ),
              SizedBox(height: Demensions.size30),
              const FoodPageListTitle(),
              SizedBox(height: Demensions.size10),
              ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: state.loadedProducts.length,
                itemBuilder: (context, index) {
                  return Container();
                  // return FoodHorizontalItem(
                  //   infoText: state.loadedProducts[index].title,
                  //   imagePopular: state.loadedProducts[index].thumbnailUrl,
                  // );
                },
              ),
            ],
          );
        }
        return const Center(child: CircularProgressIndicator());
      },
    );
  }
}
