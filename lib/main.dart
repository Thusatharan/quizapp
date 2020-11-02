import 'package:flutter/material.dart';

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
      _questionIndex = _questionIndex+1;
    });
    print(_questionIndex);
  }

  @override
  build(BuildContext context) {
    var quetions = [
      'What is your favorite color?',
      'What is your favorite animal?'
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Quiz Application'),
        ),
        body: Column(
          children: [
            Text(quetions[_questionIndex]),
            RaisedButton(
              child: Text('Answer 1'),
              onPressed: _answerQuetion,
            ),
            RaisedButton(
              child: Text('Answer 2'),
              onPressed: () {
                print('Answer 2 is Choosen');
              },
            ),
            RaisedButton(
              child: Text('Answer 3'),
              onPressed: () {
                print('Answer 3 is choosen');
              },
            ),
          ],
        ),
      ),
    );
  }
}
