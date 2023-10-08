import 'package:flutter/material.dart';
import 'package:quizapp/answer.dart';
import 'package:quizapp/question.dart';
import 'package:quizapp/submit.dart';
import 'package:quizapp/submit_button.dart';

class Quiz extends StatefulWidget {
  var QuestionIndex;
  final List<Map<String, Object>> questions;
  final Function answerResponse;
  //
  Quiz(this.questions, this.answerResponse, this.QuestionIndex);

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  Map selectedAnswer = {};

  void getAnswer(Map answer) {
    setState(() {
      selectedAnswer = answer;
    });
    debugPrint('selected Answer : $selectedAnswer');
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Expanded(
            child: ListView(
              padding: EdgeInsets.all(5),
              children: [
                Question(
                  widget.questions[widget.QuestionIndex]['question'] as String,
                ),
                ...(widget.questions[widget.QuestionIndex]['answer']
                        as List<Map<String, Object>>)
                    .map((answer) {
                  return Answer((selectedAns) {
                    getAnswer(selectedAns);
                  }, answer as Map, selectedAnswer == answer);
                }).toList(),
              ],
            ),
          ),
          SubmitButton(
              tapable: selectedAnswer.isNotEmpty,
              // borderColor: Colors.grey,
              color: Colors.grey,
              onTap: () {
                widget.answerResponse(selectedAnswer['score'] as int);
                setState(() {
                  selectedAnswer = {};
                });
              },
              isAtBottom: true,
              lable: "Submit")
        ],
      ),
    );
  }
}
