import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  void quetionAnswer() {
    print('Answer Choosen');
  }

  @override
  build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Quiz Application'),
        ),
        body: Column(
          children: [
            Text('The Question'),
            RaisedButton(
              child: Text('Answer 1'),
              onPressed: quetionAnswer,
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
