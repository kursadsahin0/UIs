// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_application_1/main.dart';

class RoutePink extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        // ignore: prefer_const_literals_to_create_immutables
        items: [
          BottomNavigationBarItem(
            label: "Home",
            icon: IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HomePage()),
                );
              },
              icon: Icon(
                Icons.home_filled,
                color: Colors.black,
                size: 35,
              ),
            ),
          ),
          BottomNavigationBarItem(
            label: "Search",
            icon: IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.search,
                size: 35,
                color: Colors.black,
              ),
            ),
          ),
          // ignore: prefer_const_constructors
          BottomNavigationBarItem(
            label: "reel",
            icon: Icon(
              Icons.video_call,
              color: Colors.black,
              size: 35,
            ),
          ),
          BottomNavigationBarItem(
            label: "shop",
            icon: Icon(
              Icons.shopping_basket_outlined,
              color: Colors.black,
              size: 35,
            ),
          ),
          BottomNavigationBarItem(
            label: "profile",
            icon: Icon(
              Icons.person_outline,
              color: Colors.black,
              size: 35,
            ),
          ),
        ],
      ),
      body: Center(
        child: ListView(
          children: <Widget>[
            Column(
              children: [
                SafeArea(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Image.network(
                        'https://pbs.twimg.com/profile_images/1230862291639447554/4c0dWTJE_400x400.jpg',
                        width: 130,
                        // height: 350,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Image.network(
                        'https://pbs.twimg.com/profile_images/1499325831268777985/mA2dQb-o_400x400.jpg',
                        width: 130,
                        // height: 350,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Image.network(
                        'https://pbs.twimg.com/profile_images/1505888927680536576/xTfPC7H9_400x400.jpg',
                        width: 130,
                        // height: 200,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Image.network(
                      'https://pbs.twimg.com/profile_images/1428342216372670469/KXdCSP1U_400x400.jpg',
                      width: 130,
                      //height: 350,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Image.network(
                      'https://pbs.twimg.com/profile_images/1515080240619560960/qXNlGk2E_400x400.jpg',
                      width: 130,
                      //height: 350,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Image.network(
                      'https://pbs.twimg.com/profile_images/1483846139967324167/V8-tMtF0_400x400.jpg',
                      width: 130,
                      //height: 200,
                    ),
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Image.network(
                      'https://pbs.twimg.com/profile_images/1473421708832956420/JvmG-BdE_400x400.jpg',
                      width: 130,
                      //height: 350,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Image.network(
                      'https://pbs.twimg.com/profile_images/1471137443479003147/JBl1DBsN_400x400.jpg',
                      width: 130,
                      //height: 350,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Image.network(
                      'https://pbs.twimg.com/profile_images/1215657670562209792/0p224Om0_400x400.jpg',
                      width: 130,
                      //height: 200,
                    ),
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Image.network(
                      'https://pbs.twimg.com/profile_images/1308125578042761217/D-ADPXfz_400x400.jpg',
                      width: 130,
                      //height: 350,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Image.network(
                      'https://pbs.twimg.com/profile_images/1514408299441143814/5sVFRLAL_400x400.jpg',
                      width: 130,
                      //height: 350,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Image.network(
                      'https://pbs.twimg.com/profile_images/1298354087319285763/_UHUZkJb_400x400.jpg',
                      width: 130,
                      //height: 200,
                    ),
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Image.network(
                      'https://pbs.twimg.com/profile_images/1308125578042761217/D-ADPXfz_400x400.jpg',
                      width: 130,
                      //height: 350,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Image.network(
                      'https://pbs.twimg.com/profile_images/1514408299441143814/5sVFRLAL_400x400.jpg',
                      width: 130,
                      //height: 350,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Image.network(
                      'https://pbs.twimg.com/profile_images/1298354087319285763/_UHUZkJb_400x400.jpg',
                      width: 130,
                      //height: 200,
                    ),
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
