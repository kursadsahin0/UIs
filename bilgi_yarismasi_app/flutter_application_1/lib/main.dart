import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/soru_bankasi.dart';

void main() => runApp(BilgiTesti());

class BilgiTesti extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.indigo[700],
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            child: SoruSayfasi(),
          ),
        ),
      ),
    );
  }
}

class SoruSayfasi extends StatefulWidget {
  @override
  _SoruSayfasiState createState() => _SoruSayfasiState();
}

class _SoruSayfasiState extends State<SoruSayfasi> {
  List<Widget> selections = [];

  Testveri test_1 = Testveri();

  void ButonFonk(bool secilenButton) {
    if (test_1.testBittiMi() == true) {
      showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              title: new Text('Testi Bitirdiniz'),
              actions: <Widget>[
                new FlatButton(
                  child: new Text('İlk soruya Dön'),
                  onPressed: () {
                    Navigator.of(context).pop();

                    setState(() {
                      test_1.TestiSifirla();
                      selections = [];
                    });
                  },
                ),
              ],
            );
          });
    } else {
      bool dogruYanit = test_1.getAnswer();
      setState(() {
        if (dogruYanit == secilenButton) {
          selections.add(trueIcon);
        } else {
          selections.add(wrongIcon);
        }
        test_1.sonrakiSoru();
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Expanded(
          flex: 4,
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: Center(
              child: Text(
                test_1.getsoruMetni(),
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
        Wrap(spacing: 5, runSpacing: 5, children: selections),
        Expanded(
          flex: 1,
          child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 6.0),
              child: Row(children: <Widget>[
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 6),
                    child: RaisedButton(
                      padding: EdgeInsets.all(12),
                      textColor: Colors.white,
                      color: Colors.red[400],
                      child: Icon(
                        Icons.thumb_down,
                        size: 30.0,
                      ),
                      onPressed: () {
                        ButonFonk(false);
                      },
                    ),
                  ),
                ),
                Expanded(
                    child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 6),
                        child: RaisedButton(
                          padding: EdgeInsets.all(12),
                          textColor: Colors.white,
                          color: Colors.green[400],
                          child: Icon(Icons.thumb_up, size: 30.0),
                          onPressed: () {
                            ButonFonk(true);
                          },
                        ))),
              ])),
        )
      ],
    );
  }
}

const Icon trueIcon = Icon(
  Icons.mood,
  color: (Colors.green),
);

const Icon wrongIcon = Icon(
  Icons.mood_bad,
  color: Colors.red,
);
