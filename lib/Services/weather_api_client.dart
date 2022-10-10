import 'dart:convert';

import 'package:http/http.dart' as http;

import '../Model/weather_model.dart';

class WeatherAPiClient {
  Future<Weather>? getCurrentWeather(String? location) async {
    var endpoint = Uri.parse(
        "https://api.openweathermap.org/data/2.5/weather?q=${location}&appid=f3f044b0a97b4bd511671fdcefca9311&units=metric");
    var response = await http.get(endpoint);
    if (response.statusCode == 200) {
      var body = jsonDecode(response.body);
      return Weather.fromJson(body);
    } else {
      var endpoint = Uri.parse(
          "https://api.openweathermap.org/data/2.5/weather?q=bangalore&appid=f3f044b0a97b4bd511671fdcefca9311&units=metric");
      var response = await http.get(endpoint);
      var body = jsonDecode(response.body);
      return Weather.fromJson(body);
    }
  }
}
