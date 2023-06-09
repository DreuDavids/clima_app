import 'package:flutter/material.dart';

const defaultTempTextStyle =
    TextStyle(fontFamily: 'Spartan MB', fontSize: 100.0, letterSpacing: 2);

const defaultMessageTextStyle =
    TextStyle(fontFamily: 'Spartan MB', fontSize: 60.0, letterSpacing: 2);

const defaultButtonTextStyle = TextStyle(
  fontSize: 30.0,
  fontFamily: 'Spartan MB',
);

const defaultConditionTextStyle = TextStyle(fontSize: 100.0, letterSpacing: 2);

const kTextFieldInputDecoration = InputDecoration(
  filled: true,
  fillColor: Colors.white,
  icon: Icon(
    Icons.location_city,
    color: Colors.white,
    size: 40,
  ),
  hintText: 'Enter City Name',
  hintStyle: TextStyle(color: Colors.grey),
  border: OutlineInputBorder(
    borderRadius: BorderRadius.all(
      Radius.circular(10),
    ),
    borderSide: BorderSide.none,
  ),
);
