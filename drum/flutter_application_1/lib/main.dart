import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(DrumMachine());
}

class DrumMachine extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: drumPage(),
      ),
    );
  }
}

class drumPage extends StatelessWidget {
  final player = AudioCache();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: FlatButton(
                      padding: EdgeInsets.all(5),
                      onPressed: () {
                        player.play('bongo.wav');
                      },
                      child: Container(
                        color: Colors.blueAccent,
                      ),
                    ),
                  ),
                  Expanded(
                    child: FlatButton(
                      padding: EdgeInsets.all(5),
                      onPressed: () {
                        player.play('bip.wav');
                      },
                      child: Container(
                        color: Colors.redAccent,
                      ),
                    ),
                  )
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: FlatButton(
                      padding: EdgeInsets.all(5),
                      onPressed: () {
                        player.play('clap3.wav');
                      },
                      child: Container(
                        color: Colors.orangeAccent,
                      ),
                    ),
                  ),
                  Expanded(
                    child: FlatButton(
                      padding: EdgeInsets.all(5),
                      onPressed: () {
                        player.play('woo.wav');
                      },
                      child: Container(
                        color: Colors.purpleAccent,
                      ),
                    ),
                  )
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: FlatButton(
                      padding: EdgeInsets.all(5),
                      onPressed: () {
                        player.play('crash.wav');
                      },
                      child: Container(
                        color: Colors.brown,
                      ),
                    ),
                  ),
                  Expanded(
                    child: FlatButton(
                      padding: EdgeInsets.all(5),
                      onPressed: () {
                        player.play('clap1.wav');
                      },
                      child: Container(
                        color: Colors.yellow,
                      ),
                    ),
                  )
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: FlatButton(
                      padding: EdgeInsets.all(5),
                      onPressed: () {
                        player.play('how.wav');
                      },
                      child: Container(
                        color: Colors.greenAccent,
                      ),
                    ),
                  ),
                  Expanded(
                    child: FlatButton(
                      padding: EdgeInsets.all(5),
                      onPressed: () {
                        player.play('ridebel.wav');
                      },
                      child: Container(
                        color: Colors.lightBlue,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
