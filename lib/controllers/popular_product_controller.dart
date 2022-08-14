// import 'dart:convert';

// import 'package:get/get.dart';
// import 'package:shop/data/repository/popular_product_repo.dart';
// import 'package:shop/model/prodects_model.dart';
// import 'package:http/http.dart' as http;
// import 'package:shop/utils/app_constants.dart';

// class PopularProductController extends GetxController {
//   final PopularProductRepo popularProductRepo;

//   PopularProductController({required this.popularProductRepo});

//   List<ProductModel> _popularProductList = [];
//   List<ProductModel> get popularProductList => _popularProductList;
//   Future<void> getPopularProductList() async {
//     http.Response response = await popularProductRepo.getPopularProductList();
//     print(response.statusCode);
//     if (response.statusCode == 200) {
//       print('Got Products');
//       _popularProductList = [];
//       _popularProductList.addAll(Product.fromJson(response.body).products);
//       update();
//     } else {
//       print('Error');
//     }
//   }
// }
