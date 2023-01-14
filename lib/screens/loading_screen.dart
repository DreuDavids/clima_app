import 'package:clima_app/services/location.dart';
import 'package:clima_app/services/networking.dart';
import 'package:flutter/material.dart';


const String apiKey = 'd9922ead9a18625960cb85552ad005d1';


class LoadingScreen extends StatefulWidget {
  const LoadingScreen({Key key}) : super(key: key);

  @override
  LoadingScreenState createState() => LoadingScreenState();
}

class LoadingScreenState extends State<LoadingScreen> {

  double latitude;
  double longitude;

  @override
  void initState() {
    super.initState();
    /// Getting location at the start of this class
    getLocationData();
  }

  ///getting the device location
  void getLocationData() async {
    Location location = Location();
    await location.getCurrentLocation();
    ///storing the device longitude and latitude
    latitude = location.latitude;
    longitude = location.longitude;
    //api url
    NetworkHelper networkHelper = NetworkHelper('https://api.openweathermap.org/data/2.5/weather?lat=$latitude&lon=$longitude&appid=$apiKey');

    var weatherData = await networkHelper.getData();


  }

  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}
