import 'package:com/question.dart';
import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  var questionIndex;
  var startOver;
  Result(this.resultScore, this.questionIndex, this.startOver);
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(children: [
        Text(this.resultScore.toString()),
        RaisedButton(
          child: Text('goback'),
          color: Colors.blue,
          textColor: Colors.white,
          onPressed: startOver,
        )
      ]),
    );
  }
}
