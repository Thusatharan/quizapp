import 'package:flutter/material.dart';

class Quetion extends StatelessWidget {

  String quetionText;
  Quetion(this.quetionText); //Constructor

  @override
  Widget build(BuildContext context) {
    return Text(quetionText);
  }
}