import 'package:flutter/material.dart';
import 'package:flutter_quiz_app/question.dart';
import 'package:flutter_quiz_app/answer.dart';

import 'answer.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int questionIndex;
  final Function answerIndex;

  Quiz(this.answerIndex, this.questions, this.questionIndex);
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          height: MediaQuery.of(context).size.height / 5,
          child: Question(
            questions[questionIndex]['questionText'],
          ),
        ),
        SizedBox(height: 5),
        ...(questions[questionIndex]['answers'] as List<String>)
            .map((answer) => Answer(() => answerIndex(answer), answer))
            .toList()
      ],
    );
  }
}
