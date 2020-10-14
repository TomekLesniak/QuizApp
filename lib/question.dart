import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String questionText;

  Question(this.questionText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(20),
      child: Text(
        questionText,
        style: TextStyle(
          color: Colors.deepPurple,
          fontSize: 28,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
