import 'package:flutter/material.dart';
import 'quiz_brain.dart';

QuizBrain quizBrain = QuizBrain();
void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Doge(),
  ));
}

class Doge extends StatefulWidget {
  @override
  _DogeState createState() => _DogeState();
}

class _DogeState extends State<Doge> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        centerTitle: true,
        title: Text("QUIZZER"),
      ),
      backgroundColor: Colors.grey[800],
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(8),
          child: QuizPage(),
        ),
      ),
    );
  }
}

class QuizPage extends StatefulWidget {
  @override
  _QuizPageState createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  void falseans(bool a) {
    if (a == false) {
      SCORE.add(
        Icon(
          Icons.check,
          color: Colors.green,
        ),
      );
    }
    if (a == true) {
      SCORE.add(
        Icon(
          Icons.close,
          color: Colors.red,
        ),
      );
    }
  }

  void trueans(bool a) {
    if (a == true) {
      SCORE.add(
        Icon(
          Icons.check,
          color: Colors.green,
        ),
      );
    }
    if (a == false) {
      SCORE.add(
        Icon(
          Icons.close,
          color: Colors.red,
        ),
      );
    }
  }

  int queno = 0;

  List<Icon> SCORE = [];
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          SizedBox(
            height: 25,
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(145, 0, 145, 0),
            child: RaisedButton(
              color: Colors.blueGrey,
              onPressed: () {
                setState(() {
                  queno = (queno - 1) % quizBrain.QuestionBan.length;
                });
              },
              child: Icon(
                Icons.arrow_back,
                color: Colors.white,
                size: 50,
              ),
            ),
          ),
          SizedBox(
            height: 25,
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(145, 0, 145, 0),
            child: RaisedButton(
              color: Colors.blueGrey,
              onPressed: () {
                setState(() {
                  queno = (queno + 1) % quizBrain.QuestionBan.length;
                });
              },
              child: Icon(
                Icons.arrow_forward,
                color: Colors.white,
                size: 50,
              ),
            ),
          ),
          SizedBox(
            height: 25,
          ),
          Expanded(
            flex: 10,
            child: Padding(
              padding: EdgeInsets.all(10.0),
              child: Center(
                child: Text(
                  quizBrain.QuestionBan[queno].q,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 25.0,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Padding(
              padding: EdgeInsets.fromLTRB(85, 13, 85, 13),
              child: RaisedButton(
                textColor: Colors.white,
                color: Colors.green,
                child: Text(
                  'True',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20.0,
                  ),
                ),
                onPressed: () {
                  bool cor = quizBrain.QuestionBan[queno].a;

                  setState(() {
                    trueans(cor);
                    queno = (queno + 1) % quizBrain.QuestionBan.length;
                  });
                  //The user picked true.
                },
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Padding(
              padding: EdgeInsets.fromLTRB(85, 13, 85, 13),
              child: RaisedButton(
                color: Colors.red,
                child: Text(
                  'False',
                  style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.white,
                  ),
                ),
                onPressed: () {
                  bool cor = quizBrain.QuestionBan[queno].a;
                  setState(() {
                    falseans(cor);
                    queno = (queno + 1) % quizBrain.QuestionBan.length;
                  });
                  //The user picked false.
                },
              ),
            ),
          ),
          Wrap(
            children: SCORE,
          ),
          Expanded(
            flex: 1,
            child: SizedBox(
              height: 5,
            ),
          ),
        ],
      ),
    );
  }
}
