import 'package:flutter/material.dart';

final locationsList = [
    "New York",
    "Berlin",
    "London",
    "Los Angeles"
];


Widget locationsPage() {
  return Center(
    child: 
       ListView.builder(
        itemCount: 4,
        itemBuilder: (BuildContext context, int index) {
          return Text(locationsList[index]);
        },
      ),
    );
}


