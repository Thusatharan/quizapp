import 'package:flutter/material.dart';
import './quetion.dart';
import './answer.dart';

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
  var _questionIndex = 0;

  void _answerQuetion() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
  }

  @override
  build(BuildContext context) {
    const quetions = [
      {
        'quetionText': 'What is your favourite color',
        'answerText': ['Red', 'Black', 'Green', 'Blue'],
      },
      {
        'quetionText': 'What is your pet animal',
        'answerText': ['Dog', 'Cat', 'Parrot', 'Love Birds'],
      },
      {
        'quetionText': 'What is your hobby',
        'answerText': ['Reading Books', 'Gaming', 'Gardening', 'Cricket'],
      },
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Quiz Application'),
        ),
        body: Column(
          children: [
            Quetion(
              quetions[_questionIndex]['quetionText'],
            ),
            ...(quetions[_questionIndex]['answerText'] as List<String>)  
          //Three dots will take objects from the list and add to the parent list as individual object
                .map((answer) {
              return Answer(_answerQuetion, answer);
            }).toList()
            //as List<String> says that There is a list in the key
          ],
        ),
      ),
    );
  }
}
