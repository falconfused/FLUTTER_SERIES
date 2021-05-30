import 'package:flutter/material.dart';
import 'questionbank.dart';

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
  List<QuestionBank> QuestionBan = [
    QuestionBank(q: "Venus is the closest planet to the Sun.", a: false),
    QuestionBank(
        q: "The tilt of Earth\'s axis has no effect on it\'s length of day",
        a: false),
    QuestionBank(q: "There\'s a class of stars that are just 25ºC.", a: true),
    QuestionBank(
        q: "'One small step for man' is the first thing anyone said on the moon.",
        a: false),
    QuestionBank(
        q: "The Great Wall of China is the only human-made object you can see from space.",
        a: false),
    QuestionBank(
        q: "There's a nebula shaped like a manatee that scientists named the 'Manatee Nebula' in a special ceremony in 2013.",
        a: true),
    QuestionBank(
        q: "It takes 170,000 YEARS, on average, for a photon to travel from the centre of the sun to it's surface.",
        a: true),
    QuestionBank(
        q: "The sun makes up 99.8% of the mass of the solar system.", a: true),
    QuestionBank(
        q: "The nearest black hole to Earth is just 1,600 light years away.",
        a: false),
    QuestionBank(
        q: "Instead of spending money creating a pen that would work in space, the Russians just use pencils.",
        a: true),
    QuestionBank(q: "The sun is yellow.", a: false),
    QuestionBank(
        q: "If you went into space without a spacesuit on, you'd explode.",
        a: true),
    QuestionBank(
        q: "Apollo astronauts collected Moon rocks for analysis. Astronauts haven't traveled to Mars to collect rocks, so we don't have any pieces of Mars to analyze.",
        a: false),
    QuestionBank(
        q: "Sunlight requires nearly 25 seconds to reach Earth.", a: false),
    QuestionBank(
        q: "Jupiter is more massive than all the other planets in our solar system put together",
        a: true),
    QuestionBank(q: " Blue stars are much cooler than red stars", a: false),
    QuestionBank(
        q: "Approximately 90% of our galaxy might contain dark matter.",
        a: true),
    QuestionBank(
        q: "The Moon is larger in surface area than the United States",
        a: true),
    QuestionBank(
        q: "Of the four inner planets (Mercury, Venus, Earth, and Mars), Mars has the coolest surface temperature",
        a: false),
    QuestionBank(
        q: "Footprints and tyre tracks that have been left behind by astronauts on the moon will stay there forever.",
        a: true),
    QuestionBank(q: "Mars is sometimes known as the blue planet.", a: false),
    QuestionBank(q: "A day on Venus is longer than a year.", a: true),
    QuestionBank(q: " Astronauts grow in space.", a: true),
    QuestionBank(
        q: "After their return from the moon, the crew of Apollo 11 were placed in quarantine.",
        a: true),
    QuestionBank(
        q: "Mount Everest is the tallest mountain in the solar system. ",
        a: false)
  ];
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
                  queno = (queno - 1) % QuestionBan.length;
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
                  queno = (queno + 1) % QuestionBan.length;
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
                  QuestionBan[queno].q,
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
                  bool cor = QuestionBan[queno].a;

                  setState(() {
                    trueans(cor);
                    queno = (queno + 1) % QuestionBan.length;
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
                  bool cor = QuestionBan[queno].a;
                  setState(() {
                    falseans(cor);
                    queno = (queno + 1) % QuestionBan.length;
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
