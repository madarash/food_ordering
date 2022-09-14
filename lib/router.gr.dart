// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i4;
import 'package:flutter/cupertino.dart' as _i6;
import 'package:flutter/material.dart' as _i5;

import 'main_screen.dart' as _i1;
import 'pages/food_details/page_food_details.dart' as _i2;
import 'pages/food_recommended/page_food_recommended.dart' as _i3;

class AppRouter extends _i4.RootStackRouter {
  AppRouter([_i5.GlobalKey<_i5.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i4.PageFactory> pagesMap = {
    MainScreen.name: (routeData) {
      final args = routeData.argsAs<MainScreenArgs>(
          orElse: () => const MainScreenArgs());
      return _i4.MaterialPageX<dynamic>(
          routeData: routeData, child: _i1.MainScreen(key: args.key));
    },
    FoodRouteDetails.name: (routeData) {
      final args = routeData.argsAs<FoodRouteDetailsArgs>();
      return _i4.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i2.FoodPageDetails(
              imagePopular: args.imagePopular, key: args.key));
    },
    FoodRouteRecommended.name: (routeData) {
      final args = routeData.argsAs<FoodRouteRecommendedArgs>();
      return _i4.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i3.FoodPageRecommended(image: args.image, key: args.key));
    }
  };

  @override
  List<_i4.RouteConfig> get routes => [
        _i4.RouteConfig(MainScreen.name, path: '/'),
        _i4.RouteConfig(FoodRouteDetails.name, path: '/food-page-details'),
        _i4.RouteConfig(FoodRouteRecommended.name,
            path: '/food-page-recommended')
      ];
}

/// generated route for
/// [_i1.MainScreen]
class MainScreen extends _i4.PageRouteInfo<MainScreenArgs> {
  MainScreen({_i6.Key? key})
      : super(MainScreen.name, path: '/', args: MainScreenArgs(key: key));

  static const String name = 'MainScreen';
}

class MainScreenArgs {
  const MainScreenArgs({this.key});

  final _i6.Key? key;

  @override
  String toString() {
    return 'MainScreenArgs{key: $key}';
  }
}

/// generated route for
/// [_i2.FoodPageDetails]
class FoodRouteDetails extends _i4.PageRouteInfo<FoodRouteDetailsArgs> {
  FoodRouteDetails({required String imagePopular, _i6.Key? key})
      : super(FoodRouteDetails.name,
            path: '/food-page-details',
            args: FoodRouteDetailsArgs(imagePopular: imagePopular, key: key));

  static const String name = 'FoodRouteDetails';
}

class FoodRouteDetailsArgs {
  const FoodRouteDetailsArgs({required this.imagePopular, this.key});

  final String imagePopular;

  final _i6.Key? key;

  @override
  String toString() {
    return 'FoodRouteDetailsArgs{imagePopular: $imagePopular, key: $key}';
  }
}

/// generated route for
/// [_i3.FoodPageRecommended]
class FoodRouteRecommended extends _i4.PageRouteInfo<FoodRouteRecommendedArgs> {
  FoodRouteRecommended({required String image, _i6.Key? key})
      : super(FoodRouteRecommended.name,
            path: '/food-page-recommended',
            args: FoodRouteRecommendedArgs(image: image, key: key));

  static const String name = 'FoodRouteRecommended';
}

class FoodRouteRecommendedArgs {
  const FoodRouteRecommendedArgs({required this.image, this.key});

  final String image;

  final _i6.Key? key;

  @override
  String toString() {
    return 'FoodRouteRecommendedArgs{image: $image, key: $key}';
  }
}
