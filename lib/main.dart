import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shop/app.dart';
import 'package:shop/app_observer.dart';

import 'package:shop/service_locator.dart';

void main() {
  Bloc.observer = AppObserver();
  WidgetsFlutterBinding.ensureInitialized();
  initServiceLocator();
  runApp(const MyApp());
}
