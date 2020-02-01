import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_data_weather/models/weather.dart';
import 'package:flutter_data_weather/models/weather_brain.dart';
import 'package:flutter_data_weather/screens/search_screen.dart';
import 'package:flutter_data_weather/tools/constants.dart';
import 'package:flutter_data_weather/widgets/content_card.dart';
import 'package:flutter_data_weather/widgets/rounded_card_icon_and_text.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:google_fonts/google_fonts.dart';

class ResultScreen extends StatefulWidget {
  final latitude, longitude;

  const ResultScreen({Key key, this.latitude, this.longitude})
      : super(key: key);

  @override
  _ResultScreenState createState() => _ResultScreenState();
}

class _ResultScreenState extends State<ResultScreen> {
  WeatherBrain weatherBrain = WeatherBrain();
  Weather weather = Weather();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getCurrent(latitude: widget.latitude, longitude: widget.longitude);
  }

  void getCurrent({double latitude, double longitude}) async {
    Weather getCurr =
        await weatherBrain.getCurrentLocationWeather(latitude, longitude);
    setState(() {
      weather = getCurr;
    });
  }

  @override
  Widget build(BuildContext context) {
    print(weather.icon);
    return Scaffold(
      body: Container(
        constraints: BoxConstraints.expand(),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              'images/sun.jpg',
            ),
            fit: BoxFit.cover,
          ),
        ),
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  FlatButton(
                    onPressed: () {
                      getCurrent(
                          latitude: widget.latitude,
                          longitude: widget.longitude);
                    },
                    child: Icon(
                      Icons.location_searching,
                      color: Colors.black,
                      size: 50.0,
                    ),
                  ),
                  FlatButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return SearchScreen();
                          },
                        ),
                      );
                    },
                    child: Icon(
                      Icons.location_city,
                      color: Colors.black,
                      size: 50.0,
                    ),
                  ),
                ],
              ),
              ContentCard(
                child: Center(
                  child: Text(
                    weather.cityName ?? '',
                    style:
                        GoogleFonts.molle(fontSize: 50.0, color: Colors.white),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  RoundedCardIconAndText(
                    icon: FontAwesome.thermometer_empty,
                    text: weather.minTemp.toString(),
                  ),
                  RoundedCardIconAndText(
                    icon: FontAwesome.thermometer_half,
                    text: weather.temp.toString(),
                    backgroundColor: Colors.cyan.shade900,
                    sizeMode: SizeMode.large,
                  ),
                  RoundedCardIconAndText(
                    icon: FontAwesome.thermometer_full,
                    text: weather.maxTemp.toString(),
                    backgroundColor: Colors.redAccent,
                  ),
                ],
              ),
              ContentCard(
                  child: Column(
                children: <Widget>[
                  Text(
                    weather.mainDescription ?? '',
                    style: GoogleFonts.pacifico(
                        fontSize: 30.0, color: Colors.white),
                  ),
                  weather.icon != null
                      ? Image.network(
                          'http://openweathermap.org/img/wn/${weather.icon}@2x.png')
                      : SizedBox(),
                  Text(
                    weather.description ?? '',
                    style: GoogleFonts.pacifico(
                        fontSize: 15.0, color: Colors.white),
                  ),
                ],
              )),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  RoundedCardIconAndText(
                    icon: WeatherIcons.wi_flood,
                    text: weather.seaLevel.toString(),
                    backgroundColor: Colors.blue.shade900,
                    sizeMode: SizeMode.small,
                  ),
                  RoundedCardIconAndText(
                    icon: WeatherIcons.wi_earthquake,
                    text: weather.groundLevel.toString(),
                    backgroundColor: Colors.green.shade900,
                    sizeMode: SizeMode.small,
                  ),
                  RoundedCardIconAndText(
                    icon: WeatherIcons.wi_windy,
                    text: weather.windSpeed.toString(),
                    backgroundColor: Colors.grey.shade900,
                    sizeMode: SizeMode.small,
                  ),
                  RoundedCardIconAndText(
                    icon: WeatherIcons.wi_barometer,
                    text: weather.pressure.toString(),
                    backgroundColor: Colors.red.shade900,
                    sizeMode: SizeMode.small,
                  ),
                  RoundedCardIconAndText(
                    icon: WeatherIcons.wi_humidity,
                    text: weather.humidity.toString(),
                    backgroundColor: Colors.lightBlue.shade900,
                    sizeMode: SizeMode.small,
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
