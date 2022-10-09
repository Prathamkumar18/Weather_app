import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyWeather extends StatelessWidget {
  var tAndD = DateTime.now();
  @override
  Widget build(BuildContext context) {
    return Container(
      // ignore: prefer_const_literals_to_create_immutables
      child: Column(children: [
        Text(
          "Bangalore",
          style: TextStyle(
              color: Colors.white, fontSize: 45, fontWeight: FontWeight.bold),
        ),
        Text(
          "Wednesday, January 10,2019",
          style: TextStyle(color: Colors.white, fontSize: 22),
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(
          "25°c",
          style: TextStyle(
              color: Colors.white, fontSize: 110, fontWeight: FontWeight.bold),
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
          "Cloudy",
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
          height: 30.0,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              Text(
                "Wind💨:2.5",
                style: TextStyle(fontSize: 22, color: Colors.white),
              ),
              Text(
                "Humidity💧:60",
                style: TextStyle(fontSize: 22, color: Colors.white),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 15,
        ),
        Padding(
          padding: const EdgeInsets.all(12.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              Text(
                "Pressure🌡️:1016",
                style: TextStyle(fontSize: 22, color: Colors.white),
              ),
              Text(
                "Feels_like👀:28°c",
                style: TextStyle(fontSize: 22, color: Colors.white),
              ),
            ],
          ),
        ),
      ]),
    );
  }
}
