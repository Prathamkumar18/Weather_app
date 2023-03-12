import 'package:flutter/material.dart';
import 'package:flutter_application_4/Model/weather_model.dart';
import 'package:flutter_application_4/Services/weather_api_client.dart';
import 'package:flutter_application_4/Widgets/search.dart';
import 'package:flutter_application_4/Widgets/weatherr.dart';
import 'package:shimmer/shimmer.dart';

class HomePagee extends StatefulWidget {
  const HomePagee({super.key});

  @override
  State<HomePagee> createState() => _HomePageeState();
}

class _HomePageeState extends State<HomePagee> {
  String x = "Bangalore";
  WeatherAPiClient client = WeatherAPiClient();
  Weather? data;
  Future<void> getData() async {
    data = await client.getCurrentWeather("${x}");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.black,
      appBar: AppBar(
        elevation: 0.0,
        centerTitle: true,
        backgroundColor: Colors.blue,
        title: Text(
          "Weather App",
          style: TextStyle(
              color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold),
        ),
        leading: Icon(
          Icons.sunny_snowing,
          color: Colors.orange,
          size: 45,
        ),
      ),
      body: Column(
        children: [
          Container(
            height: 550,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(40),
                    bottomRight: Radius.circular(40))),
            child: Column(
              children: [
                Search(city: changex),
                FutureBuilder(
                  future: getData(),
                  builder: ((context, snapshot) {
                    if (snapshot.connectionState == ConnectionState.done) {
                      return MyWeather(
                        data: data,
                        topData: 1,
                      );
                    } else if (snapshot.connectionState ==
                        ConnectionState.waiting)
                      return Shimmer.fromColors(
                        baseColor: Colors.black,
                        highlightColor: Color.fromARGB(255, 0, 229, 255),
                        child: Container(
                          height: 450,
                          width: MediaQuery.of(context).size.width,
                          child: Column(children: [
                            DummyShimmer(50, 280),
                            SizedBox(
                              height: 15,
                            ),
                            DummyShimmer(20, 180),
                            SizedBox(
                              height: 20,
                            ),
                            DummyShimmer(150, 200),
                            SizedBox(
                              height: 20,
                            ),
                            DummyShimmer(20, 180),
                            SizedBox(
                              height: 20,
                            ),
                            DummyShimmer(60, 250),
                            SizedBox(
                              height: 20,
                            ),
                            DummyShimmer(20, 180),
                            SizedBox(
                              height: 15,
                            ),
                            DummyShimmer(5, 80),
                          ]),
                        ),
                      );
                    return Container();
                  }),
                ),
              ],
            ),
          ),
          Container(
              height: 220,
              width: MediaQuery.of(context).size.width,
              color: Colors.black,
              child: FutureBuilder(
                future: getData(),
                builder: ((context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.done) {
                    return MyWeather(
                      data: data,
                      topData: 0,
                    );
                  } else
                    return Center(
                      child: CircularProgressIndicator(
                        color: Colors.white,
                      ),
                    );
                }),
              ))
        ],
      ),
    );
  }

  void changex(String str) {
    setState(() {
      if (str.isEmpty)
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          content: Text("Enter valid city name"),
          backgroundColor: Colors.green,
        ));
      else {
        x = str;
      }
    });
  }

  Widget DummyShimmer(double h, double w) {
    return Container(
      height: h,
      width: w,
      decoration: BoxDecoration(
          color: Colors.white.withOpacity(0.1),
          borderRadius: BorderRadius.all(Radius.circular(16))),
    );
  }
}
