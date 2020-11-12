import 'package:flutter/material.dart';

import './quetion.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int quetionIndex;
  final Function answerQuetion;

  Quiz(
      {@required this.questions,
      @required this.answerQuetion,
      @required this.quetionIndex});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Quetion(
          questions[quetionIndex]['quetionText'],
        ),
        ...(questions[quetionIndex]['answerText'] as List<Map<String, Object>>)
            //Three dots will take objects from the list and add to the parent list as individual object
            .map((answer) {
          return Answer(() => answerQuetion(answer['score']), answer['choice']);
        }).toList()
        //as List<String> says that There is a list in the key
      ],
    );
  }
}
