import 'package:get_it/get_it.dart';
import 'package:shop/bloc/product_bloc.dart';
import 'package:shop/data/api/product_provider.dart';
// import 'package:http/http.dart' as http;

final GetIt injector = GetIt.instance;
initServiceLocator() {
  //Bloc
  injector.registerFactory(() => ProductBloc(repo: injector()));
  //Repository
  injector.registerLazySingleton(() => ProductApiRepoImpl());
  // injector.registerLazySingleton<ProductApiRepo>(
  //     () => ProductApiRepoImpl(client: injector()));
  // injector.registerLazySingleton(() => http.Client);
}
