import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Search extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          EdgeInsets.only(top: 50.0, left: 20.0, right: 20.0, bottom: 20.0),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20.0),
        ),
        child: TextField(
          decoration: InputDecoration(
            contentPadding: EdgeInsets.all(15.0),
            hintText: "Search",
            border: InputBorder.none,
            suffixIcon: IconButton(
              icon: Icon(CupertinoIcons.search),
              color: Colors.black,
              onPressed: () {},
            ),
          ),
        ),
      ),
    );
  }
}
