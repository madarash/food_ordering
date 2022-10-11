import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:shop/service_locator.dart';
import 'bloc/product_bloc.dart';

import 'pages/cosmetic_main_page/c_main_page.dart';

class MainScreen extends StatelessWidget {
  final appData = injector.get<ProductBloc>();

  MainScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => appData..add(GetData()),
      child: const SafeArea(child: CosmeticMainPage()),
    );
  }
}
