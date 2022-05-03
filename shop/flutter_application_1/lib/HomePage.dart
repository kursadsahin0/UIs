// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_application_1/product.dart';
import 'firstProduct.dart';
import 'package:flutter_application_1/secondProduct.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool _hasBeenPressed1 = true;
  bool _hasBeenPressed2 = false;
  bool _hasBeenPressed3 = false;
  bool _hasBeenPressed4 = false;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back_ios,
              color: Colors.black,
            ),
            onPressed: () {},
          ),
          actions: <Widget>[
            IconButton(
              icon: Icon(
                Icons.search,
                color: Colors.black,
              ),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(
                Icons.shopping_cart,
                color: Colors.black,
              ),
              onPressed: () {},
            ),
          ],
        ),
        body: ListView(
          children: <Widget>[
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    FlatButton(
                      onPressed: () {
                        setState(() {
                          _hasBeenPressed1 = !_hasBeenPressed1;
                        });
                      },
                      child: Text(
                        'Hand Bag',
                        style: TextStyle(
                          fontSize: 15,
                          color: _hasBeenPressed1 ? Colors.black : Colors.grey,
                        ),
                      ),
                    ),
                    FlatButton(
                      onPressed: () {
                        setState(() {
                          _hasBeenPressed2 = !_hasBeenPressed2;
                        });
                      },
                      child: Text(
                        'Jewelry',
                        style: TextStyle(
                          fontSize: 15,
                          color: _hasBeenPressed2 ? Colors.grey : Colors.black,
                        ),
                      ),
                    ),
                    FlatButton(
                      onPressed: () {
                        setState(() {
                          _hasBeenPressed3 = !_hasBeenPressed3;
                        });
                      },
                      child: Text(
                        'Footwear',
                        style: TextStyle(
                          fontSize: 15,
                          color: _hasBeenPressed3 ? Colors.black : Colors.grey,
                        ),
                      ),
                    ),
                    FlatButton(
                      onPressed: () {
                        setState(() {
                          _hasBeenPressed4 = !_hasBeenPressed4;
                        });
                      },
                      child: Text(
                        'Dresses',
                        style: TextStyle(
                          fontSize: 15,
                          color: _hasBeenPressed4 ? Colors.black : Colors.grey,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    product1(
                        color: Color(0xFF296992),
                        imageLink:
                            'https://github.com/abuanwar072/E-commerce-App-UI-Flutter/blob/master/assets/images/bag_1.png?raw=true'),
                    product2(
                        color: Color(0xFFdba17a),
                        imageLink:
                            'https://github.com/abuanwar072/E-commerce-App-UI-Flutter/blob/master/assets/images/bag_2.png?raw=true'),
                  ],
                ),
                newtext(
                  greyText: 'Office Code',
                  greyText2: 'Belt Bag',
                ),
                boldText(price: "\$247", price2: '\$234'),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: product3(
                          color: Color(0xFF686468),
                          imageLink:
                              "https://github.com/abuanwar072/E-commerce-App-UI-Flutter/blob/master/assets/images/bag_3.png?raw=true"),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: product1(
                          color: Color(0xFFefad82),
                          imageLink:
                              "https://github.com/abuanwar072/E-commerce-App-UI-Flutter/blob/master/assets/images/bag_4.png?raw=true"),
                    )
                  ],
                ),
                newtext(greyText: 'Hang Top', greyText2: "Old Fashion"),
                boldText(price: "\$200", price2: "\$190"),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: product1(
                          color: Color(0xFFf3717b),
                          imageLink:
                              "https://github.com/abuanwar072/E-commerce-App-UI-Flutter/blob/master/assets/images/bag_5.png?raw=true"),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: product1(
                          color: Color(0xFF686468),
                          imageLink:
                              "https://github.com/abuanwar072/E-commerce-App-UI-Flutter/blob/master/assets/images/bag_6.png?raw=true"),
                    ),
                  ],
                ),
                newtext(greyText: 'Classic Bag', greyText2: "Laptop Bag"),
                boldText(price: "\$150", price2: "\$190"),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
