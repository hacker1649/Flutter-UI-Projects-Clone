import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {

  final Function keyPresser;
  final List<Map<String,Object>> questions;
  final int index;
  const Quiz({required this.questions,required this.keyPresser,required this.index});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(
          questions[index]['question'].toString(),
        ),
        ...(questions[index]['answers'] as List<Map<String,Object>>).map((answer) {
          return Answer(selectHandler: () => keyPresser(answer['score']),answertext: answer['text'].toString());
        }).toList()
      ],
    );
  }
}


