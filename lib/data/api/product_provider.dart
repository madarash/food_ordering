import 'dart:convert';

import 'package:http/http.dart' as http;

import 'package:shop/model/photo_model.dart';

class ProductProvider {
  Future<List<dynamic>> getProducts() async {
    final url = Uri.parse('https://jsonplaceholder.typicode.com/photos');
    print(url);
    final response = await http.get(url);
    print(response.statusCode.toString());
    if (response.statusCode == 200) {
      final photoJson = jsonDecode(response.body);
      print(photoJson);
      return photoJson.map((json) => Photo.fromJson(json)).toList();
    } else {
      throw Exception("Error with load Api");
    }
  }
}
























// import 'package:get/get.dart';
// import 'package:shop/utils/app_constants.dart';

// class ApiClient extends GetConnect implements GetxService {
//   late String token;
//   final String appBaseUrl;

//   late Map<String, String> _mainHeaders;

//   ApiClient({required this.appBaseUrl});
//   // {
//   //   timeout = const Duration(seconds: 30);
//   //   token = AppConstants.token;
//   //   _mainHeaders = {
//   //     'Content-type': 'application/json; charset=UTF-8',
//   //     'Authorization': 'Bearer $token',
//   //   };
//   // }

//   Future getData(String uri) async {
//     try {
//       Response response = await get(uri);
//       return response;
//     } catch (e) {
//       return const Response(statusCode: 1, statusText: 'error data');
//     }
//   }
// }
