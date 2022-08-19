import 'package:get_it/get_it.dart';
import 'package:shop/bloc/product_bloc.dart';
import 'package:shop/data/api/product_provider.dart';

final GetIt injector = GetIt.instance;
initServiceLocator() {
  //Bloc
  injector.registerFactory(() => ProductBloc(repo: injector()));
  //Repository
  injector.registerLazySingleton(() => ProductApiRepoImpl());
}
