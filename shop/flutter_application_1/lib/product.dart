// ignore_for_file: invalid_language_version_override

import 'package:flutter/material.dart';
import 'package:flutter_application_1/HomePage.dart';
import 'package:flutter_application_1/secondProduct.dart';
import 'package:flutter_application_1/thirdProduct.dart';
import 'firstProduct.dart';

// @dart=2.9
class product1 extends StatelessWidget {
  final Color color;
  final String imageLink;

  const product1({Key? key, required this.color, required this.imageLink})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          decoration: BoxDecoration(
              color: color,
              borderRadius: BorderRadius.all(Radius.circular(20))),
          child: GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => firstProduct()),
              );
            },
            child: Image.network(
              imageLink,
              width: 200,
              height: 200,
            ),
          ),
        )
      ],
    );
  }
}

// @dart=2.9
class newtext extends StatelessWidget {
  final String greyText;
  final String greyText2;
  const newtext({Key? key, required this.greyText, required this.greyText2})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Row(
          // ignore: prefer_const_literals_to_create_immutables
          children: <Widget>[
            // ignore: prefer_const_constructors
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 10),
              // ignore: prefer_const_constructors
              child: Text(
                greyText,
                style: TextStyle(color: Colors.grey),
              ),
            ),
            SizedBox(
              width: 120,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 10),
              child: Text(
                greyText2,
                style: TextStyle(color: Colors.grey),
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class boldText extends StatelessWidget {
  final String price;
  final String price2;
  const boldText({Key? key, required this.price, required this.price2})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Row(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 5),
              child: Text(
                price,
                style: TextStyle(fontSize: 15),
              ),
            ),
            SizedBox(
              width: 160,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 5),
              child: Text(
                price2,
                style: TextStyle(fontSize: 15),
              ),
            ),
          ],
        )
      ],
    );
  }
}

class product2 extends StatelessWidget {
  final Color color;
  final String imageLink;

  const product2({Key? key, required this.color, required this.imageLink})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          decoration: BoxDecoration(
              color: color,
              borderRadius: BorderRadius.all(Radius.circular(20))),
          child: GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => secondProduct()),
              );
            },
            child: Image.network(
              imageLink,
              width: 200,
              height: 200,
            ),
          ),
        )
      ],
    );
  }
}

class product3 extends StatelessWidget {
  final Color color;
  final String imageLink;

  const product3({Key? key, required this.color, required this.imageLink})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          decoration: BoxDecoration(
              color: color,
              borderRadius: BorderRadius.all(Radius.circular(20))),
          child: GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => thirdProduct()),
              );
            },
            child: Image.network(
              imageLink,
              width: 200,
              height: 200,
            ),
          ),
        )
      ],
    );
  }
}
