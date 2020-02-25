import 'package:flutter/material.dart';
import 'package:flutter_complete_gui/result.dart';

import 'quiz.dart';
import 'result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  void onPressed() {
    print('The button has been pressed');
  }

  final _questions = const [
    {
      'questionText': 'Kokia tavo megstamiausia spalva?',
      'answers': [
        {'text': 'Black', 'score': 10},
        {'text': 'Red', 'score': 15},
        {'text': 'Green', 'score': 50},
        {'text': 'White', 'score': 100},
      ]
    },
    {
      'questionText': 'Koks megstamiausias tavo gyvunas?',
      'answers': [
        {'text': 'Suo', 'score': 20},
        {'text': 'Kate', 'score': 0},
        {'text': 'Marsas', 'score': 100},
        {'text': 'Flora', 'score': 50},
      ]
    },
    {
      'questionText': 'Megstamiausias alus?',
      'answers': [
        {'text': 'Baltas', 'score': 15},
        {'text': 'Juodas', 'score': 50},
        {'text': 'Negeriu', 'score': 100},
        {'text': 'Sviesus', 'score': 20},
      ]
    }
  ];

  var _questionIndex = 0;
  var _totalScore    = 0;

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  void _answerQuestion(int score, ) {

    _totalScore += score;

    setState(() {
      // nurodome kada reikia perkrauti UI. Siuo atveju keiciasi questionIndex, todel reikia rebuildinti MaterialApp UI
      _questionIndex++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My first app '),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex,
                questions: _questions,
              )
            : Result(_totalScore, _resetQuiz),
      ),
    );
  }
}
