import 'package:flutter/material.dart';

const String kApiKey = '&appid=f2170e9c3816808c755eb0a66b2de051';
const String kBaseUrl = 'https://api.openweathermap.org/data/2.5/weather?';
const String kBaseUrlIcon = 'http://openweathermap.org/img/wn/';

const TextStyle kCityTextStyle = TextStyle(
    fontSize: 50.0,
    letterSpacing: 2,
    color: Colors.white,
    fontWeight: FontWeight.bold,
    shadows: [
      Shadow(
        color: Colors.black,
        blurRadius: 10.0,
        offset: Offset(2.0, 2.0),
      )
    ]);

const TextStyle kLabelTextStyle = TextStyle(
  fontSize: 15.0,
  color: Colors.white,
  fontWeight: FontWeight.bold,
);

const InputDecoration kTextFieldInputDecoration = InputDecoration(
  filled: true,
  fillColor: Colors.white,
  icon: Icon(
    Icons.location_city,
    color: Colors.white,
  ),
  hintText: 'Enter City Name',
  hintStyle: TextStyle(
    color: Colors.grey,
  ),
  border: OutlineInputBorder(
    borderRadius: BorderRadius.all(
      Radius.circular(10.0),
    ),
    borderSide: BorderSide.none,
  ),
);
