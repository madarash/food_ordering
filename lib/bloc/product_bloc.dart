import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shop/data/repository/popular_product_repo.dart';

part 'product_event.dart';
part 'product_state.dart';

class ProductBloc extends Bloc<ProductEvent, ProductState> {
  final ProductApiRepo repo;

  ProductBloc({required this.repo}) : super(ProductLoadingState()) {
    on<GetData>((event, emit) async {
      emit(ProductLoadingState());
      try {
        final List<dynamic> loadedProductsList = await repo.getProductList();
        emit(ProductLoadedState(loadedProducts: loadedProductsList));
      } catch (e) {
        emit(ProductLoadError(message: e.toString()));
      }
    });
  }
}
