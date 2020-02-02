import 'package:flutter_data_weather/models/weather.dart';
import 'package:flutter_data_weather/services/networking.dart';
import 'package:flutter_data_weather/tools/constants.dart';

class WeatherBrain {
  /// Create [WeatherBrain] class
  ///
  Future<Weather> getCurrentLocationWeather(
      double latitude, double longitude) async {
    Networking networking =
        Networking(url: '${kBaseUrl}lat=$latitude&lon=$longitude${kApiKey}');
    var data = await networking.getData();
    return Weather.fromJson(data);
  }

  Future<Weather> getWeatherByCityName(String cityName) async {
    Networking networking = Networking(url: '${kBaseUrl}q=$cityName${kApiKey}');
    var data = await networking.getData();
    return Weather.fromJson(data);
  }
}
