// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_application_1/filmler.dart';
// @dart=2.9

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
                        onPressed: () {},
                        child: Text('Diziler'),
                      ),
                      FlatButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Filmler()),
                          );
                        },
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
                          'https://upload.wikimedia.org/wikipedia/tr/d/d8/Breaking_Bad_4.Sezon_Kapa%C4%9F%C4%B1.jpg',
                      w: 120,
                    ),
                    diziler(
                        link:
                            'https://tr.web.img2.acsta.net/pictures/17/10/18/16/34/1489673.jpg',
                        w: 115),
                    diziler(
                        link:
                            'https://cdn.dsmcdn.com/mnresize/500/-/ty57/product/media/images/20210116/16/53993665/69144102/1/1_org.jpg',
                        w: 115)
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    diziler(
                      link:
                          'https://tr.web.img4.acsta.net/medias/nmedia/18/78/35/82/20303823.jpg',
                      w: 130,
                    ),
                    diziler(
                        link:
                            'https://static.boxofficeturkiye.com/movie//poster/full/51/1051-48320151.jpg',
                        w: 115),
                    diziler(
                        link:
                            'https://cdn.dsmcdn.com/ty9/product/media/images/20201015/13/15934574/93593332/1/1_org_zoom.jpg',
                        w: 115)
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
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    diziler(
                      link:
                          'https://i.pinimg.com/1200x/69/46/22/69462214b5bf723e5490134c297e0823.jpg',
                      w: 130,
                    ),
                    diziler(
                        link:
                            'https://m.media-amazon.com/images/I/51pG5REYl+L._AC_SY780_.jpg',
                        w: 130),
                    diziler(
                        link:
                            'https://ceotudent.com/wp-content/uploads/2021/07/7lv3rt.jpeg',
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

class diziler extends StatelessWidget {
  final String link;
  final double w;

  const diziler({Key? key, required this.link, required this.w})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Image.network(
          link,
          width: w,
        ),
        SizedBox(
          height: 10,
        ),
      ],
    );
  }
}
