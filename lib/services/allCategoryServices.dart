import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:store_app/helper/get.dart';

class allCategorySerices {
  Future<List<dynamic>> allCategoryService() async {
    List<dynamic> data = await api()
        .getrequest(url: 'https://fakestoreapi.com/products/categories');

    return data;
  }
}
