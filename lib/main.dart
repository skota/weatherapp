import 'package:flutter/material.dart';

import 'pages/home.dart';
import 'pages/locations.dart';
import 'pages/settings.dart';


void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _selectedIndex = 0;
  
  //array of pages
  List<Widget> _pages = [
      homePage(),
      locationsPage(),
      settingsPage()
  ];
  
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Sample',
        home: Scaffold(
          appBar: AppBar(title: Text("Ta da")),
          body: Center(
              child: _pages.elementAt(_selectedIndex)
          ),
          bottomNavigationBar: BottomNavigationBar(
            items: <BottomNavigationBarItem>[
                BottomNavigationBarItem(icon: Icon(Icons.home), title: Text('Home')),
                BottomNavigationBarItem(icon: Icon(Icons.location_city), title: Text('Locations')),
                BottomNavigationBarItem(icon: Icon(Icons.settings), title: Text('Settings')),
            ],
            currentIndex: _selectedIndex,
            onTap: onItemTapped,
          ),
        ),
    );
  }

  void onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });

  }
}


