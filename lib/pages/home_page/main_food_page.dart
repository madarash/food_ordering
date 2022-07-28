import 'package:flutter/material.dart';
import 'package:shop/utils/utils.dart';

import 'package:shop/widgets/widgets.dart';
import 'home_page.dart';

class MainFoodPage extends StatefulWidget {
  const MainFoodPage({Key? key}) : super(key: key);

  @override
  State<MainFoodPage> createState() => _MainFoodPageState();
}

class _MainFoodPageState extends State<MainFoodPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: const [
          TopSection(),
          Expanded(
            child: SingleChildScrollView(
              child: FoodPageBody(),
            ),
          ),
        ],
      ),
    );
  }
}

class TopSection extends StatelessWidget {
  const TopSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: Demensions.size10),
      padding: EdgeInsets.symmetric(horizontal: Demensions.size20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              const BigText(
                text: 'Country',
                color: AppColors.mainColor,
              ),
              Row(
                children: const [
                  SmallText(
                    text: 'City',
                    color: AppColors.mainBlackColor,
                  ),
                  Icon(Icons.arrow_drop_down_rounded),
                ],
              ),
            ],
          ),
          Center(
            child: Container(
              width: Demensions.size40,
              height: Demensions.size40,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(Demensions.size10),
                  color: AppColors.mainColor),
              child: Icon(
                Icons.search,
                color: Colors.white,
                size: Demensions.iconSize,
              ),
            ),
          )
        ],
      ),
    );
  }
}
