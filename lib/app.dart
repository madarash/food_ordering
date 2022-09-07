import 'package:flutter/material.dart';
import 'package:shop/router.gr.dart';
import 'package:shop/service_locator.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final router = injector<AppRouter>();

    return MaterialApp.router(
        debugShowCheckedModeBanner: false,
        routeInformationParser: router.defaultRouteParser(),
        routerDelegate: router.delegate());
  }
}
