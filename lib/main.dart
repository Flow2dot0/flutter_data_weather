import 'package:flutter/material.dart';
import 'package:flutter_data_weather/screens/loading_screen.dart';
import 'package:flutter_data_weather/screens/result_screen.dart';
import 'package:flutter_data_weather/screens/search_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Data Weather',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => LoadingScreen(),
        '/result': (context) => ResultScreen(),
        '/search': (context) => SearchScreen(),
      },
    );
  }
}
