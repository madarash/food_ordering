import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shop/pages/home_page/main_food_page.dart';

import 'package:shop/service_locator.dart';
import 'bloc/product_bloc.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => injector<ProductBloc>()..add(GetData()),
      child: const SafeArea(child: MainFoodPage()),
    );
  }
}
