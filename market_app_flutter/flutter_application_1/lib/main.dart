// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(accentColor: Colors.grey),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  int ilkUrun = 0;
  int ikinciUrun = 0;
  int ucuncuUrun = 0;
  int dortUrun = 0;
  int besUrun = 0;
  int altiUrun = 0;
  int yediUrun = 0;
  int sekizUrun = 0;
  int dokuzUrun = 0;
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: ListView(
            children: <Widget>[
              Expanded(
                child: SafeArea(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(left: 20.0),
                        child: Text(
                          "Ürünlerimiz",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Colors.deepOrangeAccent, fontSize: 30),
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(top: 50.0, left: 25.0),
                  child: Row(
                    children: <Widget>[
                      Image.network(
                        'https://migros-dali-storage-prod.global.ssl.fastly.net/sanalmarket/product/07020072/07020072-b27806.jpg',
                        height: 110.0,
                      ),
                      SizedBox(
                        width: 15.0,
                      ),
                      Image.network(
                        'https://migros-dali-storage-prod.global.ssl.fastly.net/sanalmarket/product/11019193/11019193-61f351.jpg',
                        height: 110.0,
                      ),
                      SizedBox(
                        width: 15.0,
                      ),
                      Image.network(
                        'https://migros-dali-storage-prod.global.ssl.fastly.net/sanalmarket/product/04133702/04133702-03b427.jpg',
                        height: 110.0,
                      ),
                    ],
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Text('Oreo Double Fun \n Karamel Vanilya'),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Text('Fomilk Şekersiz \n Soya 1L'),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Text(' Sızma \n Zeytinyağı 2L'),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20.0, left: 10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    ButtonTheme(
                      minWidth: 5,
                      child: OutlineButton(
                        child: Icon(
                          FontAwesomeIcons.minus,
                          size: 3,
                        ),
                        onPressed: () {
                          setState(() {
                            ilkUrun--;
                          });
                        },
                      ),
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    Text(
                      ilkUrun.toString(),
                      style: TextStyle(
                          fontSize: 20.0, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    ButtonTheme(
                      minWidth: 5,
                      child: OutlineButton(
                        child: Icon(
                          FontAwesomeIcons.plus,
                          size: 3,
                        ),
                        onPressed: () {
                          setState(() {
                            ilkUrun++;
                          });
                        },
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 1.0, left: 10.0),
                      child: Row(
                        children: <Widget>[
                          ButtonTheme(
                            minWidth: 5,
                            child: OutlineButton(
                              child: Icon(
                                FontAwesomeIcons.minus,
                                size: 3,
                              ),
                              onPressed: () {
                                setState(() {
                                  ikinciUrun--;
                                });
                              },
                            ),
                          ),
                          SizedBox(
                            width: 10.0,
                          ),
                          Text(
                            ikinciUrun.toString(),
                            style: TextStyle(
                                fontSize: 20.0, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            width: 10.0,
                          ),
                          ButtonTheme(
                            minWidth: 5,
                            child: OutlineButton(
                              child: Icon(
                                FontAwesomeIcons.plus,
                                size: 3,
                              ),
                              onPressed: () {
                                setState(() {
                                  ikinciUrun++;
                                });
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 1.0, left: 10.0),
                      child: Row(
                        children: <Widget>[
                          ButtonTheme(
                            minWidth: 5,
                            child: OutlineButton(
                              child: Icon(
                                FontAwesomeIcons.minus,
                                size: 3,
                              ),
                              onPressed: () {
                                setState(() {
                                  ucuncuUrun--;
                                });
                              },
                            ),
                          ),
                          SizedBox(
                            width: 10.0,
                          ),
                          Text(
                            ucuncuUrun.toString(),
                            style: TextStyle(
                                fontSize: 20.0, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            width: 5.0,
                          ),
                          ButtonTheme(
                            minWidth: 5,
                            child: OutlineButton(
                              child: Icon(
                                FontAwesomeIcons.plus,
                                size: 3,
                              ),
                              onPressed: () {
                                setState(() {
                                  ucuncuUrun++;
                                });
                              },
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),

// **********************************************************************************************************************************

              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(top: 50.0, left: 25.0),
                  child: Row(
                    children: <Widget>[
                      Image.network(
                        'https://migros-dali-storage-prod.global.ssl.fastly.net/sanalmarket/product/10017209/ekici-beyaz-peynir-kg-a4d730.jpg',
                        height: 110.0,
                      ),
                      SizedBox(
                        width: 15.0,
                      ),
                      Image.network(
                        'https://migros-dali-storage-prod.global.ssl.fastly.net/sanalmarket/product/07040550/07040550-5608ae.jpg',
                        height: 110.0,
                      ),
                      SizedBox(
                        width: 15.0,
                      ),
                      Image.network(
                        'https://migros-dali-storage-prod.global.ssl.fastly.net/sanalmarket/product/31010901/31010901-a560a7.png',
                        height: 110.0,
                      ),
                    ],
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Text('Ekici Beyaz Peynir \n 49,95'),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Text('Milka Çikolata \n Rüyası\n 9,69'),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Text(' Tuvalet Kağıdı \n 32li \n79,43'),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20.0, left: 10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    ButtonTheme(
                      minWidth: 5,
                      child: OutlineButton(
                        child: Icon(
                          FontAwesomeIcons.minus,
                          size: 3,
                        ),
                        onPressed: () {
                          setState(() {
                            dortUrun--;
                          });
                        },
                      ),
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    Text(
                      dortUrun.toString(),
                      style: TextStyle(
                          fontSize: 20.0, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    ButtonTheme(
                      minWidth: 5,
                      child: OutlineButton(
                        child: Icon(
                          FontAwesomeIcons.plus,
                          size: 3,
                        ),
                        onPressed: () {
                          setState(() {
                            dortUrun++;
                          });
                        },
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 1.0, left: 10.0),
                      child: Row(
                        children: <Widget>[
                          ButtonTheme(
                            minWidth: 5,
                            child: OutlineButton(
                              child: Icon(
                                FontAwesomeIcons.minus,
                                size: 3,
                              ),
                              onPressed: () {
                                setState(() {
                                  besUrun--;
                                });
                              },
                            ),
                          ),
                          SizedBox(
                            width: 10.0,
                          ),
                          Text(
                            besUrun.toString(),
                            style: TextStyle(
                                fontSize: 20.0, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            width: 10.0,
                          ),
                          ButtonTheme(
                            minWidth: 5,
                            child: OutlineButton(
                              child: Icon(
                                FontAwesomeIcons.plus,
                                size: 3,
                              ),
                              onPressed: () {
                                setState(() {
                                  besUrun++;
                                });
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 1.0, left: 10.0),
                      child: Row(
                        children: <Widget>[
                          ButtonTheme(
                            minWidth: 5,
                            child: OutlineButton(
                              child: Icon(
                                FontAwesomeIcons.minus,
                                size: 3,
                              ),
                              onPressed: () {
                                setState(() {
                                  altiUrun--;
                                });
                              },
                            ),
                          ),
                          SizedBox(
                            width: 10.0,
                          ),
                          Text(
                            altiUrun.toString(),
                            style: TextStyle(
                                fontSize: 20.0, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            width: 5.0,
                          ),
                          ButtonTheme(
                            minWidth: 5,
                            child: OutlineButton(
                              child: Icon(
                                FontAwesomeIcons.plus,
                                size: 3,
                              ),
                              onPressed: () {
                                setState(() {
                                  altiUrun++;
                                });
                              },
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),

// *********************************************************************************************

              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(top: 50.0, left: 25.0),
                  child: Row(
                    children: <Widget>[
                      Image.network(
                        'https://migros-dali-storage-prod.global.ssl.fastly.net/sanalmarket/product/24010018/24010018-9b73d3.jpg',
                        height: 110.0,
                      ),
                      SizedBox(
                        width: 15.0,
                      ),
                      Image.network(
                        'https://migros-dali-storage-prod.global.ssl.fastly.net/sanalmarket/product/25010584/25010584-73d3b9.jpg',
                        height: 110.0,
                      ),
                      SizedBox(
                        width: 15.0,
                      ),
                      Image.network(
                        'https://migros-dali-storage-prod.global.ssl.fastly.net/sanalmarket/product/05049810/kral-koksal-gullac-300-gr-9ffb9e.jpg',
                        height: 110.0,
                      ),
                    ],
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Text('Kuzu Kuşbaşı \n 168,48'),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Text('Dana Tandır \n 142,18'),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Text(' Köksal Güllaç \n30,45'),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20.0, left: 10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    ButtonTheme(
                      minWidth: 5,
                      child: OutlineButton(
                        child: Icon(
                          FontAwesomeIcons.minus,
                          size: 3,
                        ),
                        onPressed: () {
                          setState(() {
                            yediUrun--;
                          });
                        },
                      ),
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    Text(
                      yediUrun.toString(),
                      style: TextStyle(
                          fontSize: 20.0, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    ButtonTheme(
                      minWidth: 5,
                      child: OutlineButton(
                        child: Icon(
                          FontAwesomeIcons.plus,
                          size: 3,
                        ),
                        onPressed: () {
                          setState(() {
                            yediUrun++;
                          });
                        },
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 1.0, left: 10.0),
                      child: Row(
                        children: <Widget>[
                          ButtonTheme(
                            minWidth: 5,
                            child: OutlineButton(
                              child: Icon(
                                FontAwesomeIcons.minus,
                                size: 3,
                              ),
                              onPressed: () {
                                setState(() {
                                  sekizUrun--;
                                });
                              },
                            ),
                          ),
                          SizedBox(
                            width: 10.0,
                          ),
                          Text(
                            sekizUrun.toString(),
                            style: TextStyle(
                                fontSize: 20.0, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            width: 10.0,
                          ),
                          ButtonTheme(
                            minWidth: 5,
                            child: OutlineButton(
                              child: Icon(
                                FontAwesomeIcons.plus,
                                size: 3,
                              ),
                              onPressed: () {
                                setState(() {
                                  sekizUrun++;
                                });
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 1.0, left: 10.0),
                      child: Row(
                        children: <Widget>[
                          ButtonTheme(
                            minWidth: 5,
                            child: OutlineButton(
                              child: Icon(
                                FontAwesomeIcons.minus,
                                size: 3,
                              ),
                              onPressed: () {
                                setState(() {
                                  dokuzUrun--;
                                });
                              },
                            ),
                          ),
                          SizedBox(
                            width: 10.0,
                          ),
                          Text(
                            dokuzUrun.toString(),
                            style: TextStyle(
                                fontSize: 20.0, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            width: 5.0,
                          ),
                          ButtonTheme(
                            minWidth: 5,
                            child: OutlineButton(
                              child: Icon(
                                FontAwesomeIcons.plus,
                                size: 3,
                              ),
                              onPressed: () {
                                setState(() {
                                  dokuzUrun++;
                                });
                              },
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),

              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    RaisedButton(
                        child: Text(
                          'Sepete ekle',
                          style: TextStyle(color: Colors.white),
                        ),
                        color: Colors.orangeAccent,
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Sepetim()),
                          );
                        })
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class Sepetim extends StatefulWidget {
  @override
  State<Sepetim> createState() => _SepetimState();
}

class _SepetimState extends State<Sepetim> {
  int ilkUrun = 0;
  int ikinciUrun = 0;
  int ucuncuUrun = 0;
  int dortUrun = 0;
  int besUrun = 0;
  int altiUrun = 0;
  int yediUrun = 0;
  int sekizUrun = 0;
  int dokuzUrun = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('Sepetim'),
        backgroundColor: Colors.orangeAccent,
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Text(
                'Sepetin Boş',
                style: TextStyle(fontSize: 20),
              ),
            )
          ],
        ),
      ),
    );
  }
}
