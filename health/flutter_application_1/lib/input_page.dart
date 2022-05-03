import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  double icilenSigara = 0.0;
  double sporSayisi = 0.0;
  int boy = 170;
  int kilo = 80;

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'YAŞAM BEKLENTİSİ',
          style: TextStyle(color: Colors.black54),
        ),
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: MyContainer(
                    child: Row(children: <Widget>[
                      RotatedBox(
                        quarterTurns: -1,
                        child: Text(
                          'BOY',
                          style: TextStyle(
                              color: Colors.black54,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      RotatedBox(
                        quarterTurns: -1,
                        child: Text(
                          boy.toString(),
                          style: TextStyle(
                              color: Colors.green,
                              fontSize: 40,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          ButtonTheme(
                            minWidth: 36,
                            child: OutlineButton(
                                child: Icon(
                                  FontAwesomeIcons.plus,
                                  size: 12,
                                ),
                                onPressed: () {
                                  setState(() {
                                    boy++;
                                  });
                                }),
                          ),
                          ButtonTheme(
                            minWidth: 36,
                            child: OutlineButton(
                                child: Icon(
                                  FontAwesomeIcons.minus,
                                  size: 12,
                                ),
                                onPressed: () {
                                  setState(() {
                                    boy--;
                                  });
                                }),
                          ),
                        ],
                      )
                    ]),
                  ),
                ),
                Expanded(
                  child: MyContainer(
                    child: Row(children: <Widget>[
                      RotatedBox(
                        quarterTurns: -1,
                        child: Text(
                          'KİLO',
                          style: TextStyle(
                              color: Colors.black54,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      RotatedBox(
                        quarterTurns: -1,
                        child: Text(
                          kilo.toString(),
                          style: TextStyle(
                              color: Colors.green,
                              fontSize: 40,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          ButtonTheme(
                            minWidth: 36,
                            child: OutlineButton(
                                child: Icon(
                                  FontAwesomeIcons.plus,
                                  size: 12,
                                ),
                                onPressed: () {
                                  setState(() {
                                    kilo++;
                                  });
                                }),
                          ),
                          ButtonTheme(
                            minWidth: 36,
                            child: OutlineButton(
                                child: Icon(
                                  FontAwesomeIcons.minus,
                                  size: 12,
                                ),
                                onPressed: () {
                                  setState(() {
                                    kilo--;
                                  });
                                }),
                          ),
                        ],
                      )
                    ]),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: MyContainer(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text('Haftada kaç kez spor yapıyorsunuz?',
                      style: TextStyle(
                          color: Colors.black54,
                          fontSize: 20,
                          fontWeight: FontWeight.bold)),
                  Text(
                    sporSayisi.round().toString(),
                    style: TextStyle(
                        color: Colors.black54,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                  Slider(
                    min: 0,
                    max: 7,
                    value: sporSayisi,
                    onChanged: (double newValue) {
                      setState(() {
                        sporSayisi = newValue;
                      });
                    },
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: MyContainer(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'Günde kaç sigara içiyorsunuz?',
                    style: TextStyle(
                        color: Colors.black54,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    icilenSigara.round().toString(),
                    style: TextStyle(
                        color: Colors.black54,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                  Slider(
                    min: 0,
                    max: 40,
                    value: icilenSigara,
                    onChanged: (double newValue) {
                      setState(() {
                        icilenSigara = newValue;
                      });
                    },
                  ),
                ],
              ),
            ),
          ),
          //   Expanded(
          Expanded(
            child: Container(
              child: MyContainer(
                child: RaisedButton(
                  child: Text(
                    'HESAPLA',
                    style: TextStyle(
                        color: Colors.black54,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                  onPressed: () {
                    var yil = (93 -
                        (icilenSigara * 0.50).toInt() +
                        (sporSayisi * 0.20).toInt());
                    var alert = AlertDialog(
                      title: Text('Yaşam Beklentisi'),
                      content: Text(yil.toString()),
                    );
                    showDialog(
                        context: context,
                        builder: (BuildContext context) => alert);
                  },
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class genderButton extends StatelessWidget {
  final String? gender;
  final IconData? icon;

  genderButton({this.gender, this.icon});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          icon,
          size: 50,
          color: Colors.black54,
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          gender.toString(),
          style: TextStyle(
              color: Colors.black54, fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}

class MyContainer extends StatelessWidget {
  @override
  final Widget? child;
  final Color? renk;
  MyContainer({this.child, this.renk});
  Widget build(BuildContext context) {
    return Container(
      child: child,
      margin: EdgeInsets.all(12.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: Colors.white,
      ),
    );
  }
}
