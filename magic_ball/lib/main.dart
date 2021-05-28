import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MagicBall(),
  ));
}

class MagicBall extends StatefulWidget {
  @override
  _MagicBallState createState() => _MagicBallState();
}

class _MagicBallState extends State<MagicBall> {
  int ans = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        centerTitle: true,
        title: Text(
          "Ask Me Anything",
          style: TextStyle(color: Colors.grey[100]),
        ),
      ),
      body: Center(
        child: Column(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: TextButton(
                    onPressed: () {
                      setState(() {
                        ans = Random().nextInt(5) + 1;
                      });
                    },
                    child: Image.asset("assets/$ans.png")),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
