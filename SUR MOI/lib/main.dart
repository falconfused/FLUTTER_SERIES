import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: Vivek(), debugShowCheckedModeBanner: false));
}

class Vivek extends StatefulWidget {
  @override
  _VivekState createState() => _VivekState();
}

class _VivekState extends State<Vivek> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[850],
      appBar: AppBar(
        backgroundColor: Colors.purple[300],
        title: Text("SUR MOI"),
        centerTitle: true,
      ),
      body: Column(
        // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        // crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          SizedBox(
            height: 120,
          ),
          CircleAvatar(
            radius: 65,
            backgroundImage: AssetImage("assets/image.jpg"),
          ),
          SizedBox(
            height: 10,
          ),
          Text("Vivek Goswami",
              style: TextStyle(
                color: Colors.white,
                fontFamily: 'Pattaya',
                fontSize: 35,
              )),
          Text("FLUTTER DEVELOPER",
              style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'Alegreya',
                  fontSize: 18,
                  fontWeight: FontWeight.w700,
                  letterSpacing: 2)),
          Row(),
          SizedBox(
            height: 15,
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(18, 0, 18, 0),
            child: Card(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const ListTile(
                    leading: Icon(Icons.mail),
                    title: Text('falconfused88@gmail.com'),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 15),
          Padding(
            padding: const EdgeInsets.fromLTRB(18, 0, 18, 0),
            child: Card(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const ListTile(
                    leading: Icon(Icons.call),
                    title: Text('+91 8840782388'),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
