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
    print(Weather.fromJson(data).cityName);
    return Weather.fromJson(data);
  }

  getWeatherByCityName() async {}

  getWeatherIcon() async {}
}
