import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart';

class NetworkHelper {

  NetworkHelper(this.url);

  final String url;

  Future getData() async {
    ///calling the api with the parameters required
    Response response = await get(Uri.parse(url),);

    if (response.statusCode == 200) {
      //debugPrint('>>>Response Body Debug<<< ${response.body}');
      String weatherData = response.body;
      return jsonDecode(weatherData);

    } else {
      debugPrint('>>>Status Code Debug: FAIL CODE<<< ${response.statusCode}');
    }
  }


}
