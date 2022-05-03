// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:weather_icons/weather_icons.dart';

// ignore_for_file: prefer_const_constructors
void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.lightBlueAccent,
        body: Column(
          children: <Widget>[
            Expanded(
              child: SafeArea(
                child: Column(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Text(
                        'Trabzon/Merkez',
                        style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ),
                    Text(
                      'April 05 2022',
                      style: TextStyle(color: Colors.white),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 50.0, left: 70.0),
                      child: Row(
                        children: [
                          Icon(
                            Icons.wb_sunny,
                            size: 150,
                            color: Colors.yellowAccent,
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 50),
                            child: Text(
                              '30°',
                              style: TextStyle(
                                  fontSize: 50.0, color: Colors.white),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(top: 40.0),
                      child: Card(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            Text(
                              '33°\n Max \n \n 26° \n Min',
                              style: TextStyle(fontSize: 20.0),
                            ),
                            Text(
                              '70 \n Wind \n \n 74% \n Humidity',
                              style: TextStyle(fontSize: 20.0),
                            ),
                            Text(
                              '18 \n Sunrise \n \n 7\n Sunset',
                              style: TextStyle(fontSize: 20.0),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(top: 20.0),
                      child: Text(
                        'Next 4 Days',
                        style: TextStyle(color: Colors.white, fontSize: 25.0),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(top: 20.0),
                      child: Card(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            Column(
                              children: [
                                Text(
                                  'Wed ',
                                  style: TextStyle(fontSize: 20.0),
                                ),
                                Icon(
                                  Icons.cloud,
                                  size: 35,
                                ),
                                Text(
                                  '25-28',
                                  style: TextStyle(fontSize: 15.0),
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                Text(
                                  'Thu ',
                                  style: TextStyle(fontSize: 20.0),
                                ),
                                Icon(
                                  Icons.cloudy_snowing,
                                  size: 35,
                                ),
                                Text(
                                  '10-15',
                                  style: TextStyle(fontSize: 15.0),
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                Text(
                                  'Fri ',
                                  style: TextStyle(fontSize: 20.0),
                                ),
                                Icon(
                                  Icons.sunny,
                                  size: 35,
                                ),
                                Text(
                                  '15-20',
                                  style: TextStyle(fontSize: 15.0),
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                Text(
                                  'Sat ',
                                  style: TextStyle(fontSize: 20.0),
                                ),
                                Icon(
                                  Icons.cloud,
                                  size: 35,
                                ),
                                Text(
                                  '20-25',
                                  style: TextStyle(fontSize: 15.0),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
