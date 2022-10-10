import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_4/Pages/home_page.dart';

class MyWeather extends StatelessWidget {
  var tAndD = DateTime.now();
  final data;

  MyWeather({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return Container(
      // ignore: prefer_const_literals_to_create_immutables
      child: Column(children: [
        Text(
          "${data.city}",
          style: TextStyle(
              color: Colors.white, fontSize: 45, fontWeight: FontWeight.bold),
        ),
        Text(
          "${days(tAndD.weekday)}, ${months(tAndD.month)} ${tAndD.day},${tAndD.year}",
          style: TextStyle(color: Colors.white, fontSize: 22),
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(
          "${data.temp}°c",
          style: TextStyle(
              color: Colors.white, fontSize: 90, fontWeight: FontWeight.bold),
        ),
        SizedBox(
          height: 5.0,
        ),
        Text(
          "${data.tempmin}°c/${data.tempmax}°c",
          style: TextStyle(
              color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold),
        ),
        SizedBox(
          height: 10.0,
        ),
        Text(
          "- - - - - - - - - - - - - - -",
          style: TextStyle(color: Colors.white, fontSize: 30),
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(
          "${data.description}",
          style: TextStyle(
              color: Colors.white, fontSize: 30, fontWeight: FontWeight.w600),
        ),
        SizedBox(
          height: 20.0,
        ),
        Text(
          "Additional Information:",
          style: TextStyle(
              color: Colors.white, fontSize: 30, fontWeight: FontWeight.w400),
        ),
        SizedBox(
          height: 20.0,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              Text(
                "Pressure🌡️:${data.pressure}",
                style: TextStyle(fontSize: 22, color: Colors.white),
              ),
              Text(
                "Humidity💧:${data.humidity}",
                style: TextStyle(fontSize: 22, color: Colors.white),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              Text(
                "Feels_like👀:${data.feels}°c",
                style: TextStyle(fontSize: 22, color: Colors.white),
              ),
              Text(
                "Wind💨:${data.wind}",
                style: TextStyle(fontSize: 22, color: Colors.white),
              ),
            ],
          ),
        ),
      ]),
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
}
