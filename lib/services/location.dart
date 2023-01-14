import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';

///Function which returns a devices location
class Location {
  //declaring variables
  double latitude, longitude;

  ///Gets the current location (lat,lon) of the user device
  Future<void> getCurrentLocation() async {

    LocationPermission permission = await Geolocator.requestPermission();

    ///Try to get the location
    ///getting the current position of the lowest accuracy
    try {
      Position position = await Geolocator.getCurrentPosition(
          desiredAccuracy: LocationAccuracy.low,forceAndroidLocationManager: false,
      );

      ///assigning the lat and longitude
      latitude = position.latitude;
      longitude = position.longitude;
    }

    ///If getting location fails
    catch (e) {
      ///print the exception error
      debugPrint('>>>Position Debug <<< $e');
      //check if location permissions where granted

    }
  }
}
