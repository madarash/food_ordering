import 'dart:convert';

import 'package:http/http.dart' as http;

import 'package:shop/model/photo_model.dart';
import 'package:shop/utils/app_constants.dart';

abstract class ProductApiRepo {
  Future<List> getProducts();
}

class ProductApiRepoImpl implements ProductApiRepo {
  @override
  Future<List<dynamic>> getProducts() async {
    final url = Uri.parse(AppConstants.baseUrl);
    final response = await http.get(url);

    if (response.statusCode == 200) {
      final photoJson = jsonDecode(response.body);
      return photoJson.map((json) => Photo.fromJson(json)).toList();
    } else {
      throw Exception("Error with load Api");
    }
  }
}
