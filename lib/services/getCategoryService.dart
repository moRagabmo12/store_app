import 'dart:convert';

import 'package:store_app/helper/get.dart';
import 'package:store_app/models/productModel.dart';
import 'package:http/http.dart' as http;

class getCategoryService {
  Future<List<productModel>> getCategory(
      {required String category_name}) async {
    List<dynamic> data = await api().getrequest(
        url: 'https://fakestoreapi.com/products/category/$category_name');
    List<productModel> products = [];
    for (var product in data) {
      products.add(productModel.fromJson(product));
    }
    return products;
  }
}
