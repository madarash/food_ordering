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
import 'package:flutter/material.dart' as _i5;

import 'main_screen.dart' as _i1;
import 'pages/food_details_page/page_food_details.dart' as _i2;
import 'pages/food_details_page/page_food_recommended.dart' as _i3;

class AppRouter extends _i4.RootStackRouter {
  AppRouter([_i5.GlobalKey<_i5.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i4.PageFactory> pagesMap = {
    MainScreen.name: (routeData) {
      return _i4.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.MainScreen());
    },
    FoodRouteDetails.name: (routeData) {
      return _i4.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i2.FoodPageDetails());
    },
    FoodRouteRecommended.name: (routeData) {
      return _i4.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i3.FoodPageRecommended());
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
class MainScreen extends _i4.PageRouteInfo<void> {
  const MainScreen() : super(MainScreen.name, path: '/');

  static const String name = 'MainScreen';
}

/// generated route for
/// [_i2.FoodPageDetails]
class FoodRouteDetails extends _i4.PageRouteInfo<void> {
  const FoodRouteDetails()
      : super(FoodRouteDetails.name, path: '/food-page-details');

  static const String name = 'FoodRouteDetails';
}

/// generated route for
/// [_i3.FoodPageRecommended]
class FoodRouteRecommended extends _i4.PageRouteInfo<void> {
  const FoodRouteRecommended()
      : super(FoodRouteRecommended.name, path: '/food-page-recommended');

  static const String name = 'FoodRouteRecommended';
}
