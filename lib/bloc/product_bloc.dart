import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shop/data/api/product_provider.dart';

part 'product_event.dart';
part 'product_state.dart';

class ProductBloc extends Bloc<ProductEvent, ProductState> {
  final ProductApiRepoImpl repo;

  ProductBloc({required this.repo}) : super(ProductLoadingState()) {
    on<GetData>(
      (event, emit) async {
        // emit(ProductLoadingState());
        try {
          final List<dynamic> loadedProductsList = await repo.getProducts();
          emit(ProductLoadedState(loadedProducts: loadedProductsList));
        } catch (e) {
          emit(
            ProductLoadError(message: e.toString()),
          );
        }
      },
    );
  }
}
