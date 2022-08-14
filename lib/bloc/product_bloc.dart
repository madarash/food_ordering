import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shop/data/api/product_provider.dart';

part 'product_event.dart';
part 'product_state.dart';

class ProductBloc extends Bloc<ProductEvent, ProductState> {
  final repo = ProductProvider();

  ProductBloc() : super(ProductLoadingState()) {
    on<GetData>((event, emit) async {
      emit(ProductLoadingState());
      try {
        final List<dynamic> loadedProductsList = await repo.getProducts();
        print('$loadedProductsList');
        emit(ProductLoadedState(loadedProducts: loadedProductsList));
      } catch (e) {
        print(e.toString());
        emit(ProductLoadError(message: e.toString()));
      }
    });
  }
}
