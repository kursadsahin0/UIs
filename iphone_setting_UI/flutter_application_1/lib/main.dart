import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SettingPage(),
    );
  }
}

class SettingPage extends StatefulWidget {
  @override
  State<SettingPage> createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {
  @override
  bool SwitchValue = false;
  bool SwitchValue2 = true;
  bool SwitchValue3 = false;
  bool SwitchValue4 = false;
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey[100],
        body: SafeArea(
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(top: 40, left: 20),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Settings',
                    style: TextStyle(fontSize: 45, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.all(20),
                child: Card(
                  child: Row(
                    children: <Widget>[
                      Container(
                        height: 120,
                        padding: EdgeInsets.only(top: 20),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: const EdgeInsets.only(left: 20),
                            child: CircleAvatar(
                              radius: 40,
                              backgroundColor: Colors.black,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 30),
                        child: Text(
                          'Kürşat Şahin \n Apple ID , iCloud, Media',
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.bold),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(left: 20, right: 20, top: 0),
                child: Card(
                  child: Row(
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.all(20),
                        child: Icon(
                          Icons.flight,
                          color: Colors.orange[300],
                          size: 30,
                        ),
                      ),
                      Text(
                        'Airplane Mode',
                        style: TextStyle(fontSize: 19),
                      ),
                      Container(
                        padding: EdgeInsets.only(left: 100),
                        child: Switch(
                            value: SwitchValue,
                            activeColor: Color.fromARGB(255, 92, 193, 95),
                            onChanged: (value) {
                              setState(() {
                                SwitchValue = value;
                              });
                            }),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(left: 20, right: 20, top: 0),
                child: Card(
                  child: Row(
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.all(20),
                        child: Icon(
                          Icons.wifi,
                          color: Colors.blue,
                          size: 30,
                        ),
                      ),
                      Text(
                        'Wi-Fi',
                        style: TextStyle(fontSize: 19),
                      ),
                      Container(
                        padding: EdgeInsets.only(left: 180),
                        child: Switch(
                            value: SwitchValue2,
                            activeColor: Color.fromARGB(255, 92, 193, 95),
                            onChanged: (value) {
                              setState(() {
                                SwitchValue2 = value;
                              });
                            }),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(left: 20, right: 20, top: 0),
                child: Card(
                  child: Row(
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.all(20),
                        child: Icon(
                          Icons.settings_ethernet,
                          color: Colors.green,
                          size: 30,
                        ),
                      ),
                      Text(
                        'Mobile Data',
                        style: TextStyle(fontSize: 19),
                      ),
                      Container(
                        padding: EdgeInsets.only(left: 120),
                        child: Switch(
                            value: SwitchValue3,
                            activeColor: Color.fromARGB(255, 92, 193, 95),
                            onChanged: (value) {
                              setState(() {
                                SwitchValue3 = value;
                              });
                            }),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(left: 20, right: 20, top: 0),
                child: Card(
                  child: Row(
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.all(20),
                        child: Icon(
                          Icons.link,
                          color: Colors.green,
                          size: 30,
                        ),
                      ),
                      Text(
                        'Personel Hotspot',
                        style: TextStyle(fontSize: 19),
                      ),
                      Container(
                        padding: EdgeInsets.only(left: 78),
                        child: Switch(
                            value: SwitchValue4,
                            activeColor: Color.fromARGB(255, 92, 193, 95),
                            onChanged: (value) {
                              setState(() {
                                SwitchValue4 = value;
                              });
                            }),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
