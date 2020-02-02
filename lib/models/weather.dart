class Weather {
  /// Create [Weather] class
  /// properties.fromJson : [latitude], [longitude], [temp],
  /// [minTemp], [maxTemp], [seaLevel], [groundLevel],
  /// [windSpeed], [conditionId], [pressure], [humidity],
  /// [mainDescription], [description], [icon], [cityName]

  double latitude,
      longitude,
      temp,
      minTemp,
      maxTemp,
      seaLevel,
      groundLevel,
      windSpeed;
  int conditionId, pressure, humidity;
  String mainDescription, description, icon, cityName;

  // important for the result screen
  Weather();

  Weather.fromJson(Map json) {
    latitude = json['coord']['lat'];
    longitude = json['coord']['lon'];
    temp = json['main']['temp'];
    pressure = json['main']['pressure'];
    humidity = json['main']['humidity'];
    minTemp = json['main']['temp_min'];
    maxTemp = json['main']['temp_max'];
    seaLevel = json['main']['sea_level'];
    groundLevel = json['main']['grnd_level'];
    windSpeed = json['wind']['speed'];
    conditionId = json['weather'][0]['id'];
    mainDescription = json['weather'][0]['main'];
    description = json['weather'][0]['description'];
    icon = json['weather'][0]['icon'];
    cityName = json['name'];
  }
}
