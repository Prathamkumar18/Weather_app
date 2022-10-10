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
    city = json["name"];
    temp = json["main"]["temp"];
    wind = json["wind"]["speed"];
    humidity = json["main"]["humidity"];
    pressure = json["main"]["pressure"];
    feels = json["main"]["feels_like"];
    description = json["weather"][0]["description"];
    tempmin = json["main"]["temp_min"];
    tempmax = json["main"]["temp_max"];
  }
}
