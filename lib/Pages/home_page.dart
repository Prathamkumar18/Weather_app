import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_4/Services/weather_api_client.dart';
import 'package:flutter_application_4/Widgets/weather.dart';

import '../Model/weather_model.dart';
import '../Widgets/search.dart';

class MyHome extends StatefulWidget {
  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  String x = "Bangalore";
  WeatherAPiClient client = WeatherAPiClient();
  Weather? data;
  Future<void> getData() async {
    data = await client.getCurrentWeather("${x}");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 0, 0, 16),
        title: Text(
          "Weather App",
          style: TextStyle(
              color: Color.fromARGB(255, 154, 218, 246),
              fontSize: 30,
              fontWeight: FontWeight.bold),
        ),
        leading: Icon(
          Icons.sunny,
          color: Colors.orange,
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("Assets/Images/yy.jpg"), fit: BoxFit.cover),
        ),
        child: Column(
          children: [
            Search(city: changex),
            FutureBuilder(
              future: getData(),
              builder: ((context, snapshot) {
                if (snapshot.connectionState == ConnectionState.done) {
                  return MyWeather(
                    data: data,
                  );
                } else if (snapshot.connectionState == ConnectionState.waiting)
                  return CircularProgressIndicator();
                return Container();
              }),
            ),
          ],
        ),
      ),
    );
  }

  void changex(String str) {
    setState(() {
      if (str.isEmpty)
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          content: Text("Enter valid city name"),
        ));
      else {
        x = str;
      }
    });
  }
}
