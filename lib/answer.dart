import 'package:flutter/material.dart';

class Answer extends StatelessWidget {

  final Function myHandler;
  final String answerText;
  
  Answer(this.myHandler, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        color: Colors.blue,
        child: Text(answerText),
        onPressed: myHandler,
      ),
    );
  }
}
