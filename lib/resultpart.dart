import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultPoints;
  final Function resetQuiz;

  Result(this.resultPoints, this.resetQuiz);

  String get finalResult {
    var finalText;
    if (resultPoints >= 10) {
      finalText = 'You are awesome';
    } else if (resultPoints >= 8) {
      finalText = 'You are good, but I do not like you';
    } else {
      finalText = 'You have bad sense of humor';
    }
    return finalText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            finalResult,
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          FlatButton(
            onPressed: resetQuiz,
            child: Text('Restart Quiz'),
          ),
        ],
      ),
    );
  }
}
