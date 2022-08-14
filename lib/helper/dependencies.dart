// import 'package:get/get.dart';
// import 'package:shop/controllers/popular_product_controller.dart';
// import 'package:shop/data/api/api_client.dart';
// import 'package:shop/data/repository/popular_product_repo.dart';
// import 'package:shop/utils/app_constants.dart';

// Future<void> init() async {
//   //API client
//   Get.lazyPut(
//     () => ApiClient(appBaseUrl: AppConstants.baseUrl),
//   );
//   //repos
//   Get.lazyPut(
//     () => PopularProductRepo(
//       apiClient: Get.find(),
//     ),
//   );
//   // controllers
//   Get.lazyPut(
//     () => PopularProductController(
//       popularProductRepo: Get.find(),
//     ),
//   );
// }
