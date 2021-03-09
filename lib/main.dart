import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "Mario Vanegas",
            style: TextStyle(
                fontSize: 24,
                fontFamily: 'Pacifico',
                color: Colors.white,
            ),
          ),
          backgroundColor: Colors.blue[900],
        ),
        body: Center(
          child: BallView(),
        ),
        backgroundColor: Colors.blue[50],
      ),
    );
  }
}

class BallView extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _BallView();
}

class _BallView extends State<BallView> {
  var ballPrediction = 0;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(15),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Haz una pregunta a la bola magica!",
            style: TextStyle(
              fontSize: 24,
              fontFamily: 'Pacifico',
            ),
            textAlign: TextAlign.center,
          ),
          Padding(
            padding: EdgeInsets.all(25),
            child: Image.asset(ballPrediction == 0 ? "assets/images/ball.png" : "assets/images/ball$ballPrediction.png"),
          ),
          FlatButton(
              onPressed: () {
                setState(() {
                  ballPrediction = getRandomNumber();
                });
              },
              child: Text(
                "Predecir",
                style: TextStyle(
                  fontSize: 20,
                  fontFamily: 'Pacifico',
                  color: Colors.white
                ),
              ),
              color: Colors.blue[900],
          )
        ],
      ),
    );
  }

  int getRandomNumber() {
    Random random = Random();
    var randomNumber = random.nextInt(5) + 1;

    return randomNumber;
  }
}