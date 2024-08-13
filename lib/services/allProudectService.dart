import 'dart:convert';

import 'package:store_app/helper/get.dart';
import 'package:store_app/models/productModel.dart';
import 'package:http/http.dart' as http;

class allProductServices {
  Future<List<productModel>> getAllProduct() async {
    List<dynamic> data =
        await api().getrequest(url: 'https://fakestoreapi.com/products');
    List<productModel> products = [];
    for (var product in data) {
      products.add(productModel.fromJson(product));
    }
    return products;
  }
}
