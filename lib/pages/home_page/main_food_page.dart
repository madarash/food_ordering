import 'package:flutter/material.dart';

import 'package:shop/widgets/widgets.dart';
import 'home_page.dart';

class MainFoodPage extends StatelessWidget {
  const MainFoodPage({Key? key}) : super(key: key);

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
