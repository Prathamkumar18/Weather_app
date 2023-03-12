// ignore_for_file: public_member_api_docs, sort_constructors_first
class Weather {
  String? city;
  num? temp;
  num? wind;
  num? humidity;
  num? pressure;
  num? feels;
  num? tempmin;
  num? tempmax;
  String? description;
  Weather({
    this.city,
    this.temp,
    this.wind,
    this.humidity,
    this.pressure,
    this.feels,
    this.tempmin,
    this.tempmax,
    this.description,
  });

  Weather.fromJson(Map<String, dynamic> json) {
    city = json["name"] as String?;
    temp = json["main"]["temp"] as num?;
    wind = json["wind"]["speed"] as num?;
    humidity = json["main"]["humidity"] as num?;
    pressure = json["main"]["pressure"] as num?;
    feels = json["main"]["feels_like"] as num?;
    description = json["weather"][0]["description"]as String?;
    tempmin = json["main"]["temp_min"] as num?;
    tempmax = json["main"]["temp_max"] as num?;
  }
}
