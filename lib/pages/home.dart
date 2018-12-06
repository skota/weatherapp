import 'package:flutter/material.dart';

// top section - shows city, 
// 1- city (Large font/ bold)
// 2 - current state(cloudy rainy etc)
// 3 - Temperature in F

Widget _getHeader() {
  
  return Container(
    padding: EdgeInsets.all(16.0),
    child: Center(
      child: Column(
        children: <Widget>[
        Text('Buford',style: 
              TextStyle(fontSize: 50.0,
              fontWeight: FontWeight.bold
              ),),
          Text('cloudy'),
          new Text('25 \U00B0')
        ],
      ),
    )
  );

}


Widget _getDetail() {
  return Text('Bottom section');
}

//Bottom section
// Day of week
// divider Line
// large icon of weather ( rainy, cloudy etc)


Widget homePage() {
  return Center(
    child: Column(
      children: <Widget>[
        _getHeader(),
        Divider(
          height: 18.0,
        ),
        _getDetail()
      ],
    ),
  );
}


