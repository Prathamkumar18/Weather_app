import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Search extends StatefulWidget {
  final city;

  Search({super.key, required this.city});

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  String x = "";

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          EdgeInsets.only(top: 30.0, left: 20.0, right: 20.0, bottom: 10.0),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20.0),
        ),
        child: TextField(
          onChanged: (value) {
            x = value;
          },
          decoration: InputDecoration(
            contentPadding: EdgeInsets.all(15.0),
            hintText: "Search",
            border: InputBorder.none,
            suffixIcon: IconButton(
              icon: Icon(CupertinoIcons.search),
              color: Colors.black,
              onPressed: () {
                widget.city(x);
              },
            ),
          ),
        ),
      ),
    );
  }
}
