import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var questions = [
      'What is your favourite color?',
      'What is your favoruite animal?',
    ];
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.brown,
              title: Text('Quiz App'),
            ),
            body: Column(
              children: [
                Text('Question goes here'),
                RaisedButton(
                  onPressed: null,
                  child: Text('Answer 1'),
                ),
                RaisedButton(
                  onPressed: null,
                  child: Text('Answer 2'),
                ),
                RaisedButton(
                  onPressed: null,
                  child: Text('Answer3'),
                ),
              ],
            )));
  }
}
