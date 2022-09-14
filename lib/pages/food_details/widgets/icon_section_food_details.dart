import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:shop/utils/utils.dart';
import 'package:shop/pages/home_page/widgets/widgets.dart';

class IconSectionFoodDeatils extends StatelessWidget {
  const IconSectionFoodDeatils({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: Demensions.size40,
      child: Container(
        padding: EdgeInsets.all(Demensions.size20),
        width: Demensions.screenWigth,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            GestureDetector(
              onTap: () => context.router.pop(),
              child: const PageIcon(
                icon: Icons.keyboard_arrow_left,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
