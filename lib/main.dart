import 'package:flutter/material.dart';

import 'quizpart.dart';
import 'resultpart.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final _quetions = const [
    {
      'quetionText': 'What is your favourite color',
      'answerText': [
        {'choice': 'Red', 'score': 1},
        {'choice': 'Black', 'score': 2},
        {'choice': 'Green', 'score': 3},
        {'choice': 'Blue', 'score': 4}
      ],
    },
    {
      'quetionText': 'What is your pet animal',
      'answerText': [
        {'choice': 'Dog', 'score': 4},
        {'choice': 'Cat', 'score': 1},
        {'choice': 'Parrot', 'score': 2},
        {'choice': 'Love Birds', 'score': 3}
      ],
    },
    {
      'quetionText': 'What is your hobby',
      'answerText': [
        {'choice': 'Reading Books', 'score': 4},
        {'choice': 'Gaming', 'score': 3},
        {'choice': 'Gardening', 'score': 1},
        {'choice': 'Cricket', 'score': 2}
      ],
    },
  ];

  var _questionIndex = 0;
  var _totalScore = 0;

  void restart() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  void _answerQuetion(int score) {
    _totalScore += score;

    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
  }

  @override
  build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Quiz Application'),
        ),
        body: _questionIndex < _quetions.length //This is if condition
            ? Quiz(
                answerQuetion: _answerQuetion,
                questions: _quetions,
                quetionIndex: _questionIndex,
              )
            : Result(_totalScore, restart),
      ),
    );
  }
}
