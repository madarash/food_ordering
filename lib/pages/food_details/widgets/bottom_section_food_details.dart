import 'package:flutter/material.dart';
import 'package:shop/utils/utils.dart';
import 'package:shop/pages/home_page/widgets/widgets.dart';

class BottomSection extends StatefulWidget {
  const BottomSection({Key? key}) : super(key: key);

  @override
  State<BottomSection> createState() => _BottomSectionState();
}

class _BottomSectionState extends State<BottomSection> {
  int amount = 0;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 0,
      child: Container(
        width: Demensions.screenWigth,
        height: Demensions.heightFoodInfoBottomBar,
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
                    onPressed: () => setState(() {
                      if (amount > 0) {
                        amount -= 1;
                      } else {
                        amount = 0;
                      }
                    }),
                    icon: const Icon(Icons.remove),
                  ),
                  BigText(text: amount.toString()),
                  IconButton(
                    padding: EdgeInsets.all(Demensions.size15),
                    onPressed: () => setState(() {
                      amount += 1;
                    }),
                    icon: const Icon(Icons.add),
                  ),
                ],
              ),
            ),
            const ButtonAddToCart(),
          ],
        ),
      ),
    );
  }
}
