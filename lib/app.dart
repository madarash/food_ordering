import 'package:flutter/material.dart';
import 'package:shop/router.gr.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final appRouter = AppRouter();

    return MaterialApp.router(
        debugShowCheckedModeBanner: false,
        routeInformationParser: appRouter.defaultRouteParser(),
        routerDelegate: appRouter.delegate());
  }
}
