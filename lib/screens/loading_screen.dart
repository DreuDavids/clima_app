import 'dart:html';

import 'package:clima_app/services/location.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';

class LoadingScreen extends StatefulWidget {
  const LoadingScreen({Key key}) : super(key: key);

  final String apiKey = 'd9922ead9a18625960cb85552ad005d1';
  final String weatherUrl =
      'https://api.openweathermap.org/data/2.5/weather?lat={lat}&lon={lon}&appid={API key}';

  @override
  LoadingScreenState createState() => LoadingScreenState();
}

class LoadingScreenState extends State<LoadingScreen> {
  @override
  void initState() {
    super.initState();

    /// Getting location at the start of this class
    getLocation();
  }

  void getLocation() async {
    Location location = Location();
    await location.getCurrentLocation();
    debugPrint(
        '${location.longitude.toString()}\n${location.latitude.toString()}');
  }

  void getData() async {
    Response response = await get(Uri.dataFromString(
        'https://samples.openweathermap.org/data/2.5/weather?lat=35&lon=139&appid=d9922ead9a18625960cb85552ad005d1'));
    debugPrint(response.body);
  }

  @override
  Widget build(BuildContext context) {
    getData();
    return Scaffold();
  }
}
