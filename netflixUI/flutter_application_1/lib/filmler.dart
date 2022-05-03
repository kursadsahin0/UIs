// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import 'main.dart';

class Filmler extends StatefulWidget {
  @override
  State<Filmler> createState() => _FilmlerState();
}

class _FilmlerState extends State<Filmler> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        brightness: Brightness.dark,
      ),
      home: Scaffold(
        body: ListView(
          children: <Widget>[
            Column(
              children: [
                SafeArea(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Image.network(
                        'https://github.com/dancamdev/UIs/blob/master/Netflix%20UI/assets/netflix.png?raw=true',
                        width: 40,
                        height: 40,
                      ),
                      FlatButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => HomePage()),
                          );
                        },
                        child: Text('Diziler'),
                      ),
                      FlatButton(
                        onPressed: () {},
                        child: Text('Filmler'),
                      ),
                      FlatButton(
                        onPressed: () {},
                        child: Text('Listem'),
                      ),
                    ],
                  ),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 40),
                    child: Text(
                      "Netflix'te popüler",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    diziler(
                      link:
                          'https://upload.wikimedia.org/wikipedia/tr/thumb/e/e6/Esaretin-bedeli.jpg/440px-Esaretin-bedeli.jpg',
                      w: 120,
                    ),
                    diziler(
                        link:
                            'https://tr.web.img2.acsta.net/pictures/22/03/01/15/52/0260993.jpg',
                        w: 120),
                    diziler(
                        link:
                            'https://upload.wikimedia.org/wikipedia/tr/4/4d/Kara_%C5%9E%C3%B6valye_TR_film_afi%C5%9Fi.jpg',
                        w: 120)
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    diziler(
                      link:
                          'https://tr.web.img3.acsta.net/pictures/bzp/01/22779.jpg',
                      w: 120,
                    ),
                    diziler(
                        link:
                            'https://images.beyazgazete.com/fotogaleri/2013/6/16312_dunya-savasi-z-filmi-afis-ve-fotograflari_270565.jpg',
                        w: 120),
                    diziler(
                        link:
                            'https://asli68.files.wordpress.com/2020/08/gladiator.jpg',
                        w: 120)
                  ],
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 40),
                    child: Text(
                      "Gündemdekiler",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    diziler(
                      link:
                          'https://i.dr.com.tr/cache/600x600-0/originals/0001796543001-1.jpg',
                      w: 120,
                    ),
                    diziler(
                        link:
                            'http://www.avrupasinemasi.com/wp-content/uploads/2020/04/el-hoyo-the-platform.jpg',
                        w: 125),
                    diziler(
                        link:
                            'https://tr.web.img2.acsta.net/pictures/17/09/22/11/00/1450733.jpg',
                        w: 130)
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
