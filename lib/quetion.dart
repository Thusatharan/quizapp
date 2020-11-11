import 'package:flutter/material.dart';

class Quetion extends StatelessWidget {
  final String
      quetionText; //This value cannot be changed because its in Stateless widget

  Quetion(this.quetionText); //Constructor

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(10),
      child: Text(
        quetionText,
        style: TextStyle(fontSize: 30),
        textAlign: TextAlign.center,
      ),
    );
  }
}
