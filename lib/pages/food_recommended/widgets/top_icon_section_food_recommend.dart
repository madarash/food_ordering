import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:shop/pages/home_page/widgets/widgets.dart';

class TopIconSectionFoodRecommended extends StatelessWidget {
  const TopIconSectionFoodRecommended({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      GestureDetector(
        onTap: () => context.router.pop(),
        child: const PageIcon(
          icon: Icons.clear,
        ),
      ),
      const PageIcon(icon: Icons.shopping_cart_outlined),
    ]);
  }
}
