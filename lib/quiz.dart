import 'package:first_app/questions.dart';
import 'package:flutter/material.dart';

import 'answers.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final Function getAnswer;
  final int questionsIndex;
  const Quiz(
      {key,
      required this.questions,
      required this.getAnswer,
      required this.questionsIndex});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Questions(
        questions: questions[questionsIndex]['questionsText'] as String,
      ),
      //Questions
      ...(questions[questionsIndex]['answer'] as List<Map<String, Object>>)
          .map((answer) {
        return Answer(
            selecthandler: (() => getAnswer(
                  answer['score'],
                )),
            answerText: answer['text'] as String);
      }).toList()
    ]);
  }
}
