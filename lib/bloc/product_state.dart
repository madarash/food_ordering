part of 'product_bloc.dart';

abstract class ProductState extends Equatable {}

class ProductLoadingState extends ProductState {
  @override
  List<Object?> get props => [];
}

class ProductLoadedState extends ProductState {
  final List<dynamic> loadedProducts;
  ProductLoadedState({required this.loadedProducts});
  @override
  List<Object?> get props => [loadedProducts];
}

class ProductLoadError extends ProductState {
  final String message;
  ProductLoadError({required this.message});
  @override
  List<Object?> get props => [message];
}
