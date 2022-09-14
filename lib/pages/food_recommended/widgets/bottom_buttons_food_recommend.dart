import 'package:flutter/material.dart';
import 'package:shop/utils/utils.dart';
import 'package:shop/pages/home_page/widgets/widgets.dart';

class BottomButtonsFoodRecommend extends StatelessWidget {
  const BottomButtonsFoodRecommend({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: AppColors.mainGreyColor,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      padding: EdgeInsets.all(Demensions.size30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          PageIcon(
            paddingSize: Demensions.size20,
            icon: Icons.favorite,
            radiusBorder: Demensions.size20,
          ),
          ButtonAddToCart(
            paddingSize: Demensions.size20,
            borderRadius: Demensions.size20,
          ),
        ],
      ),
    );
  }
}
