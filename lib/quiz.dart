import 'package:flutter/material.dart';

import './answer.dart';
import './question.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int currentQuestionIndex;
  final Function answerQuestion;

  Quiz(
      {@required this.answerQuestion,
      @required this.questions,
      @required this.currentQuestionIndex});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(
          questions[currentQuestionIndex]['questionText'],
        ),
        ...(questions[currentQuestionIndex]['answers']
                as List<Map<String, Object>>)
            .map((a) {
          return Answer(() => answerQuestion(a['score']), a['text']);
        }).toList()
      ],
    );
  }
}
