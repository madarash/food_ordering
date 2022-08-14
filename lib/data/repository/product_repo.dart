import 'package:shop/data/api/product_provider.dart';

class ProductApiRepo {
  final ProductApi apiClient;
  ProductApiRepo({required this.apiClient});
  getProductList() {
    return apiClient.getProducts();
  }
}
