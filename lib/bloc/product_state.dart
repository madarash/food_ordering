part of 'product_bloc.dart';

abstract class ProductState {}

class ProductLoadingState extends ProductState {}

class ProductLoadedState extends ProductState {
  final List<dynamic> loadedProducts;
  ProductLoadedState({required this.loadedProducts});
}

class ProductLoadError extends ProductState {
  final String message;
  ProductLoadError({required this.message});
}
