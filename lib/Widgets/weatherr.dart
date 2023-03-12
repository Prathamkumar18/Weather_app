import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyWeather extends StatelessWidget {
  var tAndD = DateTime.now();
  final data;
  final topData;

  MyWeather({super.key, required this.data, required this.topData});

  @override
  Widget build(BuildContext context) {
    return topData == 1
        ? Container(
            child: Column(children: [
              Text(
                "${data.city}",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 45,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                "${days(tAndD.weekday)}, ${months(tAndD.month)} ${tAndD.day},${tAndD.year}",
                style: TextStyle(color: Colors.white, fontSize: 22),
              ),
              SizedBox(
                height: 10,
              ),
              Iconn("${data.description}"),
              Text(
                "${data.description}",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                    fontWeight: FontWeight.w600),
              ),
              Text(
                "${data.temp}°c",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 90,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                "${data.tempmin}°c/${data.tempmax}°c",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 10,
              ),
              Divider(
                thickness: 3,
                endIndent: 155,
                indent: 155,
                color: Colors.blue,
              )
            ]),
          )
        : Column(
            children: [
              SizedBox(
                height: 20,
              ),
              Text(
                "Additional Information:",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                    fontWeight: FontWeight.w400),
              ),
              SizedBox(
                height: 25.0,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Pressure🌡️:${data.pressure}",
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                    Text(
                      "Humidity💧:${data.humidity}",
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    Text(
                      "Feels_like👀:${data.feels}°c",
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                    Text(
                      "Wind💨:${data.wind}",
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                  ],
                ),
              ),
            ],
          );
  }

  String days(int n) {
    if (n == 1)
      return "Monday";
    else if (n == 2)
      return "Tuesday";
    else if (n == 3)
      return "Wednesday";
    else if (n == 4)
      return "Thursday";
    else if (n == 5)
      return "Friday";
    else if (n == 6)
      return "Saturday";
    else
      return "Sunday";
  }

  String months(int n) {
    if (n == 1)
      return "January";
    else if (n == 2)
      return "February";
    else if (n == 3)
      return "March";
    else if (n == 4)
      return "April";
    else if (n == 5)
      return "May";
    else if (n == 6)
      return "June";
    else if (n == 7)
      return "July";
    else if (n == 8)
      return "August";
    else if (n == 9)
      return "September";
    else if (n == 10)
      return "October";
    else if (n == 11)
      return "November";
    else
      return "December";
  }

  Widget Iconn(String s) {
    if ((s.toLowerCase()).contains("sunny")) {
      return Icon(
        Icons.sunny,
        size: 170,
        color: Colors.white,
      );
    } else if ((s.toLowerCase()).contains("cloud")) {
      return Icon(
        Icons.cloud,
        size: 170,
        color: Colors.white,
      );
    } else if ((s.toLowerCase()).contains("snow")) {
      return Icon(
        CupertinoIcons.snow,
        size: 170,
        color: Colors.white,
      );
    } else if ((s.toLowerCase()).contains("rain")) {
      return Icon(
        CupertinoIcons.cloud_bolt_rain_fill,
        size: 170,
        color: Colors.white,
      );
    } else if ((s.toLowerCase()).contains("wind")) {
      return Icon(
        CupertinoIcons.wind,
        size: 170,
        color: Colors.white,
      );
    } else if ((s.toLowerCase()).contains("clear")) {
      return Icon(
        Icons.wb_sunny_outlined,
        size: 160,
        color: Colors.white,
      );
    } else
      return Icon(
        Icons.cloud,
        size: 170,
        color: Colors.white,
      );
  }
}
