import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class thirdProduct extends StatefulWidget {
  @override
  State<thirdProduct> createState() => _thirdProductState();
}

class _thirdProductState extends State<thirdProduct> {
  int number = 0;
  bool _hasBeenPressed = false;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return MaterialApp(
      home: Scaffold(
          backgroundColor: Color(0xFF686468),
          appBar: AppBar(
            backgroundColor: Color(0xFF686468),
            elevation: 0,
            leading: IconButton(
              icon: Icon(Icons.arrow_back_ios),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            actions: <Widget>[
              IconButton(onPressed: () {}, icon: Icon(Icons.search)),
              IconButton(onPressed: () {}, icon: Icon(Icons.shopping_cart))
            ],
          ),
          body: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Text(
                      'Aristocratic Hang Bag',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Text(
                      'Hang Top',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 35,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: RichText(
                        text: TextSpan(children: [
                          TextSpan(
                            text: 'Price \n',
                          ),
                          TextSpan(
                              text: '\$200',
                              style: Theme.of(context)
                                  .textTheme
                                  .headline4
                                  ?.copyWith(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold))
                        ]),
                      ),
                    ),
                    SizedBox(
                      width: 100,
                    ),
                    Expanded(
                      child: Image.network(
                        'https://github.com/abuanwar072/E-commerce-App-UI-Flutter/blob/master/assets/images/bag_3.png?raw=true',
                        height: 200,
                        fit: BoxFit.fill,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: size.height,
                  child: Stack(
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.only(top: size.height * 0.0),
                        height: 600,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(24),
                              topRight: Radius.circular(24)),
                        ),
                        child: Column(
                          children: [
                            Row(
                              // ignore: prefer_const_literals_to_create_immutables
                              children: <Widget>[
                                Padding(
                                  padding:
                                      const EdgeInsets.only(top: 30, left: 15),
                                  child: Text(
                                    'Color',
                                    style: TextStyle(
                                        color: Colors.grey, fontSize: 20),
                                  ),
                                ),
                                SizedBox(
                                  width: 250,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 30),
                                  child: Text(
                                    'Size',
                                    style: TextStyle(fontSize: 20),
                                  ),
                                )
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 1),
                              child: Row(
                                children: [
                                  Align(
                                    alignment: Alignment.topLeft,
                                    child: IconButton(
                                      icon: Icon(
                                        Icons.circle,
                                        color: Color(0xFFdba17a),
                                      ),
                                      onPressed: () {},
                                    ),
                                  ),
                                  Align(
                                    alignment: Alignment.topLeft,
                                    child: IconButton(
                                      icon: Icon(
                                        Icons.circle,
                                        color: Colors.black,
                                      ),
                                      onPressed: () {},
                                    ),
                                  ),
                                  Align(
                                    alignment: Alignment.topLeft,
                                    child: IconButton(
                                      icon: Icon(
                                        Icons.circle,
                                        color: Colors.yellow,
                                      ),
                                      onPressed: () {},
                                    ),
                                  ),
                                  SizedBox(
                                    width: 150,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 1),
                                    child: Align(
                                        alignment: Alignment.topRight,
                                        child: Text(
                                          '12 cm',
                                          style: TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold),
                                        )),
                                  )
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(20.0),
                              child: Text(
                                "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book",
                                style: TextStyle(color: Colors.grey),
                              ),
                            ),
                            Row(
                              children: <Widget>[
                                IconButton(
                                    onPressed: () {
                                      setState(() {
                                        number++;
                                      });
                                    },
                                    icon: Icon(FontAwesomeIcons.plus)),
                                Text(
                                  number.toString(),
                                  style: TextStyle(fontSize: 20),
                                ),
                                IconButton(
                                    onPressed: () {
                                      setState(() {
                                        if (number == 0) {
                                          number = 0;
                                        } else
                                          number--;
                                      });
                                    },
                                    icon: Icon(FontAwesomeIcons.minus)),
                                SizedBox(
                                  width: 230,
                                ),
                                IconButton(
                                  onPressed: () {
                                    setState(() {
                                      _hasBeenPressed = !_hasBeenPressed;
                                    });
                                  },
                                  icon: Icon(
                                    Icons.favorite,
                                    size: 30,
                                    color: _hasBeenPressed
                                        ? Colors.red
                                        : Colors.black,
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Padding(
                                  padding: const EdgeInsets.only(top: 20),
                                  child: Container(
                                    width: 400,
                                    height: 50,
                                    child: RaisedButton(
                                      color: Color(0xFF686468),
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(10)),
                                      child: Text(
                                        'Buy Now',
                                        style: TextStyle(color: Colors.white),
                                      ),
                                      onPressed: () {},
                                    ),
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
