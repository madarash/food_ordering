// import 'package:auto_route/annotations.dart';
// import 'package:shop/pages/food_details_page/page_food_recommended.dart';

// import 'pages/food_details_page/page_food_details.dart';
// import 'pages/home_page/home_page.dart';

// @AdaptiveAutoRouter(
//   routes: <AutoRoute>[
//     AutoRoute(page: MainFoodPage, initial: true),
//     AutoRoute(page: FoodPageRecommended),
//     AutoRoute(page: FoodPageDetails, fullscreenDialog: true),
//   ],
// )
// class $AppRouter {}

import 'package:auto_route/auto_route.dart';
import 'package:shop/main_screen.dart';
import 'package:shop/pages/food_details/page_food_details.dart';
import 'package:shop/pages/food_recommended/page_food_recommended.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(page: MainScreen, initial: true),
    AutoRoute(page: FoodPageDetails),
    AutoRoute(page: FoodPageRecommended)
  ],
)
class $AppRouter {}
