import 'package:flutter/material.dart';
import 'package:shop/utils/utils.dart';
import 'package:shop/pages/home_page/widgets/widgets.dart';

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
          BigText(text: Temp.text9),
          SizedBox(width: Demensions.size10),
          Container(
            margin: const EdgeInsets.only(bottom: 3),
            child: BigText(
              text: Temp.text11,
            ),
          ),
          SizedBox(width: Demensions.size10),
          Container(
            margin: const EdgeInsets.only(bottom: 1),
            child: SmallText(text: Temp.text10),
          ),
        ],
      ),
    );
  }
}
