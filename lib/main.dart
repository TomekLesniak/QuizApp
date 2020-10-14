import 'package:flutter/material.dart';


import './question.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState(); //new MyAppState()
  }
}

class _MyAppState extends State<MyApp> {
  var _currentQuestionIndex = 0;

  void _answerQuestion() {
    setState(() {
      _currentQuestionIndex++;
    });
    print(_currentQuestionIndex);
  }

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
                Question(
                  questions[_currentQuestionIndex],
                ),
                RaisedButton(
                  onPressed: _answerQuestion,
                  child: Text('Answer 1'),
                ),
                RaisedButton(
                  onPressed: _answerQuestion,
                  child: Text('Answer 2'),
                ),
                RaisedButton(
                  onPressed: _answerQuestion,
                  child: Text('Answer3'),
                ),
              ],
            )));
  }
}
