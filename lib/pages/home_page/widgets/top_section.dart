import 'package:flutter/material.dart';
import 'package:shop/utils/utils.dart';

import 'widgets.dart';

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
              BigText(
                text: Temp.text14,
                color: AppColors.mainColor,
              ),
              Row(
                children: [
                  SmallText(
                    text: Temp.text15,
                    color: AppColors.mainBlackColor,
                  ),
                  const Icon(Icons.arrow_drop_down_rounded),
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
                color: AppColors.mainColor,
              ),
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
