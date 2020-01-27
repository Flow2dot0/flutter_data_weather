class Weather {
  double latitude,
      longitude,
      temp,
      pressure,
      humidity,
      minTemp,
      maxTemp,
      seaLevel,
      groundLevel,
      windSpeed;
  int conditionId;
  String mainDescription, description, icon, cityName;

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
    conditionId = json['weather']['id'];
    mainDescription = json['weather']['main'];
    description = json['weather']['description'];
    icon = json['weather']['icon'];
    cityName = json['name'];
  }
}
