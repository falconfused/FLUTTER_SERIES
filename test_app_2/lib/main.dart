import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MaterialApp(
    home: Doge(),
    debugShowCheckedModeBanner: false,
  ));
}

class Doge extends StatefulWidget {
  @override
  _DogeState createState() => _DogeState();
}

class _DogeState extends State<Doge> {
  int ld = 6;
  int rd = 6;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightGreenAccent,
      appBar: AppBar(
        title: Text(
          "DICEE",
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.lime[500],
        centerTitle: true,
      ),
      body: Center(
        child: Row(
          children: [
            Expanded(
                child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextButton(
                  onPressed: () {
                    setState(() {
                      ld = Random().nextInt(6) + 1;
                      print("Value of left dice is: $ld");
                    });
                  },
                  child: Image.asset("images/dice$ld.png")),
            )),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: TextButton(
                    onPressed: () {
                      setState(() {
                        rd = Random().nextInt(6) + 1;
                        print("Value of right dice is: $rd");
                      });
                    },
                    child: Image(image: AssetImage("images/dice$rd.png"))),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
