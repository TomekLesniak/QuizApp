import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetHandler;

  Result(this.resultScore, this.resetHandler);

  //getter
  String get resultPhrase {
    var resultText = 'You did it';
    if (resultScore <= 10) {
      resultText += '\nYou Are Awesome';
    } else if (resultScore <= 16) {
      resultText += '\nYou are likeable';
    } else {
      resultText += '\nYou are strange';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            resultPhrase,
            style: TextStyle(
              color: Colors.black,
              fontSize: 36,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          FlatButton(
            child: Text('Restart Quiz'),
            onPressed: resetHandler,
            color: Colors.lime,
          ),
        ],
      ),
    );
  }
}
