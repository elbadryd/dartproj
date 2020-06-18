import 'package:flutter/material.dart';
import 'answer.dart';
import 'question.dart';

class Survey extends StatelessWidget {
  // var questionIndex, answerQuestion, questions;
  final Function answerQuestion;
  final List<Map<String, Object>> questions;
  final int questionIndex;

  Survey(this.answerQuestion, this.questions, this.questionIndex);
  @override
  Widget build(BuildContext context) {
    return Column(children: [
                Question(
                  questions[questionIndex]['questionText'],
                ),
                ...(questions[questionIndex]['answers'] as List<Map<String, Object>>)
                    .map((answer) {
                  return Answer(()=>answerQuestion(answer['score']), answer['text']);
                }).toList(),
              ]);
  }
}
