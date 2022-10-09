import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_4/Widgets/weather.dart';

import '../Widgets/search.dart';

class MyHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        centerTitle: true,
        backgroundColor: Colors.white,
        title: Text(
          "Weather App",
          style: TextStyle(
              color: Colors.black, fontSize: 30, fontWeight: FontWeight.bold),
        ),
        leading: Icon(
          Icons.sunny,
          color: Colors.orange,
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("Assets/Images/cold.jpg"), fit: BoxFit.cover),
        ),
        child: Column(
          children: [
            Search(),
            MyWeather(),
          ],
        ),
      ),
    );
  }
}
