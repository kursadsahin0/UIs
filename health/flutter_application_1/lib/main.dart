import 'package:flutter/material.dart';

import 'input_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.lightGreen,
        appBarTheme: AppBarTheme(color: Colors.lightGreenAccent),
      ),
      home: InputPage(),
    );
  }
}
