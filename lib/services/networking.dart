import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

class NetworkHelper {
  NetworkHelper(this.url);

  final String url;

  Future getData() async {
    http.Response response = await http.get(url);
    if (response.statusCode == 200) {
      //decoded json response data
      return jsonDecode(response.body);
    } else {
      debugPrint(response.statusCode.toString());
    }
  }
}
