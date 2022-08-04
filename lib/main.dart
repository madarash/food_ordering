import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
// import 'package:shop/pages/food_details_page/page_food_details.dart';

import 'pages/food_details_page/page_food_recommended.dart';
// import 'package:shop/pages/home_page/main_food_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primaryColor: Colors.blue),
      home: const SafeArea(child: FoodPageRecommended()),
    );
  }
}
