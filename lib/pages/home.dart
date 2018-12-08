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
          Text('25 \u{00B0} C',
              style: TextStyle(fontSize: 25.0,
                fontWeight: FontWeight.bold
                ))
        ],
      ),
    )
  );
}

//Bottom section
// Day of week
// divider Line
// large icon of weather ( rainy, cloudy etc)

Widget _getDetail() {
  return Container(
    padding: EdgeInsets.all(10.0),
    child: 
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                  Text('Tuesday',style: 
                    TextStyle(fontSize: 20.0,
                    fontWeight: FontWeight.bold
                    )
                  ),
                  //list of rows showing daily max and min
                  
              ],
            ),

            Padding(
              padding: EdgeInsets.all(8.0),
              child: dataRow()
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: dataRow()
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: dataRow()
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: dataRow()
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: dataRow()
            ),
          ],
          
        )
        
  );
}
    
Widget dataRow() {
  const IconData wb_sunny = IconData(0xe430, fontFamily: 'MaterialIcons');
  return Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Expanded(
            child: Text('Wednesday')
          ),
          Expanded(
            child: Text('cloudy')
          ),
          Expanded(
            child: Icon(wb_sunny)
          ),
          Expanded(
            child: Text('55')
          ),
          Expanded(
            child: Text('35')
          ),
        ],      
  );
} 


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


