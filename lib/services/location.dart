import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';

class Location {
  double latitude, longitude;

  //get device location
  Future<void> getCurrentLocation() async {
    try {
      Position position = await Geolocator()
          .getCurrentPosition(desiredAccuracy: LocationAccuracy.low);

      //assigning lat and lon
      latitude = position.latitude;
      longitude = position.longitude;
    } catch (e) {
      debugPrint('Exception : $e');
    }
  }
}
