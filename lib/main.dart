import 'package:QuizApp/result.dart';
import 'package:flutter/material.dart';

import './quiz.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState(); //new MyAppState()
  }
}

class _MyAppState extends State<MyApp> {
  var _currentQuestionIndex = 0;
  var _totalScore = 0;

  void _answerQuestion(int score) {
    _totalScore += score;

    setState(
      () {
        _currentQuestionIndex++;
      },
    );
    print(_currentQuestionIndex);
  }

  void _resetQuiz() {
    setState(() {
      _currentQuestionIndex = 0;
      _totalScore = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    const _questions = [
      {
        'questionText': 'What is your favorite color',
        'answers': [
          {'text': 'Black', 'score': 10},
          {'text': 'Red', 'score': 5},
          {'text': 'Green', 'score': 3},
          {'text': 'White', 'score': 1},
        ],
      },
      {
        'questionText': 'What is your favoritse animal',
        'answers': [
          {'text': 'Dog', 'score': 1},
          {'text': 'Cat', 'score': 3},
          {'text': 'Bird', 'score': 10},
          {'text': 'Rabbit', 'score': 5}
        ],
      },
      {
        'questionText': 'Who is your favourite instructor',
        'answers': [
          {'text': 'Max', 'score': 10},
          {'text': 'Mosh', 'score': 1},
          {'text': 'Marcus', 'score': 3},
          {'text': 'Michal', 'score': 5},
        ],
      },
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.brown,
          title: Text('Quiz App'),
        ),
        body: _currentQuestionIndex < _questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                currentQuestionIndex: _currentQuestionIndex,
                questions: _questions,
              )
            : Result(_totalScore, _resetQuiz),
      ),
    );
  }
}
