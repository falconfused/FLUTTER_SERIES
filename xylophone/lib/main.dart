import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Xylophone(),
  ));
}

class Xylophone extends StatefulWidget {
  @override
  _XylophoneState createState() => _XylophoneState();
}

class _XylophoneState extends State<Xylophone> {
  Expanded bui({a: Color, n: int}) {
    return Expanded(
      child: FlatButton(
        color: a,
        child: Text(""),
        onPressed: () {
          playbu(n);
        },
      ),
    );
  }

  void playbu(int wai) {
    final player = AudioCache();
    player.play("note$wai.wav");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              bui(a: Colors.red, n: 1),
              bui(a: Colors.orange, n: 2),
              bui(a: Colors.yellow, n: 3),
              bui(a: Colors.green, n: 4),
              bui(a: Colors.blue, n: 5),
              bui(a: Colors.indigo, n: 6),
              bui(a: Colors.purple, n: 7),
            ],
          ),
        ));
  }
}
