import 'package:flutter/material.dart';
import 'package:shop/utils/utils.dart';
import 'package:shop/widgets/widgets.dart';

class FoodPageListTitle extends StatelessWidget {
  const FoodPageListTitle({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: Demensions.size20),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          const BigText(text: 'Popular'),
          SizedBox(width: Demensions.size10),
          Container(
            margin: const EdgeInsets.only(bottom: 3),
            child: const BigText(
              text: '.',
            ),
          ),
          SizedBox(width: Demensions.size10),
          Container(
            margin: const EdgeInsets.only(bottom: 1),
            child: const SmallText(text: 'Food paring'),
          ),
        ],
      ),
    );
  }
}
