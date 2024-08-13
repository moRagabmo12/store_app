import 'dart:convert';

import 'package:http/http.dart' as http;

class api {
  Future<dynamic> getrequest({required String url}) async {
    http.Response response = await http.get(Uri.parse(url));

    if (response.statusCode == 200) {
      return jsonDecode(response.body);
    } else {
      return throw Exception(
          'there was an error ,try agin${response.statusCode}');
    }
  }
}
