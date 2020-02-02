import 'package:flutter/material.dart';
import 'package:flutter_data_weather/screens/result_screen.dart';
import 'package:flutter_data_weather/services/geolocation.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class LoadingScreen extends StatefulWidget {
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getCurrentLocation();
  }

  void getCurrentLocation() async {
    GeoLocation geoLocation = GeoLocation();
    await geoLocation.getCurrentLocation();

    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return ResultScreen(
          latitude: geoLocation.latitude, longitude: geoLocation.longitude);
    }));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: SpinKitDoubleBounce(
          color: Colors.blueAccent,
          size: 100.0,
        ),
      ),
    );
  }
}
