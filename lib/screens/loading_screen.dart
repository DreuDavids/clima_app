import 'package:clima_app/services/location.dart';
import 'package:flutter/material.dart';

class LoadingScreen extends StatefulWidget {
  const LoadingScreen({Key key}) : super(key: key);

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

  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}
