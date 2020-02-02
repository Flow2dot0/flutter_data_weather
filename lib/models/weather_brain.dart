import 'package:flutter_data_weather/models/weather.dart';
import 'package:flutter_data_weather/services/networking.dart';
import 'package:flutter_data_weather/tools/constants.dart';

class WeatherBrain {
  /// Create [WeatherBrain] class

  /// args : [latitude], [longitude]
  /// return : [Weather]
  Future<Weather> getCurrentLocationWeather(
      double latitude, double longitude) async {
    Networking networking =
        Networking(url: '${kBaseUrl}lat=$latitude&lon=$longitude${kApiKey}');
    var data = await networking.getData();
    return Weather.fromJson(data);
  }

  /// args : [cityName]
  /// return : [Weather]
  Future<Weather> getWeatherByCityName(String cityName) async {
    Networking networking = Networking(url: '${kBaseUrl}q=$cityName${kApiKey}');
    var data = await networking.getData();
    return Weather.fromJson(data);
  }
}
