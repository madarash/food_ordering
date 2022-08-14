import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shop/bloc/product_bloc.dart';
import 'package:shop/data/api/product_provider.dart';
import 'package:shop/data/repository/popular_product_repo.dart';

import 'pages/home_page/home_page.dart';

void main() async {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primaryColor: Colors.blue),
      home: BlocProvider<ProductBloc>(
        create: (context) => ProductBloc(
          repo: ProductApiRepo(
            apiClient: ProductApi(),
          ),
        )..add(GetData()),
        child: const SafeArea(child: MainFoodPage()),
      ),
    );
  }
}
