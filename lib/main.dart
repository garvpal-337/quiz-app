import 'package:flutter/material.dart';
import 'package:quizapp/result.dart';
import 'package:quizapp/quiz.dart';

void main() => runApp(
      QuizApp(),
    );

class QuizApp extends StatefulWidget {
  const QuizApp({Key? key}) : super(key: key);

  @override
  State<QuizApp> createState() => _QuizAppState();
}

class _QuizAppState extends State<QuizApp> {
  var _TotalScore = 0;
  var _QuestionIndex = 0;

  void _resetquiz() {
    setState(() {
      _QuestionIndex = 0;
      _TotalScore = 0;
    });
  }

  void _selectAnswerMarks(int Marks) {
    _TotalScore += Marks;
    setState(() {
      _QuestionIndex++;
    });

    print(_TotalScore);
  }

  var _questions = [
    {
      'question': 'What is Flutter?',
      'answer': [
        {'choice': 'Flutter is an open-source DBMS', 'score': 0},
        {'choice': 'Flutter is an open-source UI toolkit', 'score': 1},
        {'choice': 'Flutter is an open-source backend toolkit', 'score': 0},
        {'choice': 'All of the Above', 'score': 0},
      ]
    },
    {
      'question': 'Flutter is developed by ________.',
      'answer': [
        {'choice': ' Microsoft', 'score': 0},
        {'choice': ' Facebook', 'score': 0},
        {'choice': ' Google', 'score': 1},
        {'choice': 'IBM', 'score': 0},
      ]
    },
    {
      'question': 'Is Flutter a programming language?',
      'answer': [
        {'choice': 'Yes', 'score': 0},
        {'choice': 'No', 'score': 1},
        {'choice': 'May be', 'score': 0},
        {'choice': 'Not sure', 'score': 0}
      ]
    },
    {
      'question': 'Is Flutter a SDK?',
      'answer': [
        {'choice': 'Yes', 'score': 1},
        {'choice': 'No', 'score': 0},
        {'choice': 'May be', 'score': 0},
        {'choice': 'Not sure', 'score': 0}
      ]
    },
    {
      'question': 'SDK stands for _________.',
      'answer': [
        {'choice': 'Software Development kit', 'score': 1},
        {'choice': 'Software Development knowledge', 'score': 0},
        {'choice': 'Software database kit', 'score': 0},
        {'choice': 'Software data kit', 'score': 0}
      ]
    },
    {
      'question': 'What is Dart?',
      'answer': [
        {
          'choice': 'Dart is a object-oriented programming language.',
          'score': 0
        },
        {
          'choice': 'Dart is used to create a frontend user interfaces.',
          'score': 0
        },
        {'choice': 'Both A and B', 'score': 1},
        {'choice': 'None of the above', 'score': 0}
      ]
    },
    {
      'question': 'What are the advantages of Flutter?',
      'answer': [
        {'choice': 'Cross-platform Development', 'score': 0},
        {'choice': 'Faster Development', 'score': 0},
        {'choice': 'UI Focused', 'score': 0},
        {'choice': 'All of the above', 'score': 1}
      ]
    },
    {
      'question':
          'Without the main() function, we cannot write any program on Flutter.',
      'answer': [
        {'choice': 'True', 'score': 1},
        {'choice': 'False', 'score': 0},
      ]
    },
    {
      'question':
          'Flutter is mainly optimized for _________ that can run on both Android and iOS platforms.',
      'answer': [
        {'choice': '2D Mobile Apps', 'score': 1},
        {'choice': 'Desktop only', 'score': 0},
        {'choice': 'Tablets only', 'score': 0},
        {'choice': 'Non of the above', 'score': 0}
      ]
    },
    {
      'question': 'What are the best editors for Flutter development?',
      'answer': [
        {'choice': 'Android Studio', 'score': 0},
        {'choice': 'IntelliJ IDEA', 'score': 0},
        {'choice': 'Visual Studio', 'score': 0},
        {'choice': 'All of the above', 'score': 1}
      ]
    },
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text('My Quiz App'),
        centerTitle: true,
        backgroundColor: Colors.grey[800],
      ),
      body: _QuestionIndex < _questions.length
          ? Quiz(_questions, _selectAnswerMarks, _QuestionIndex)
          : Result(_TotalScore, _resetquiz),
    ));
  }
}
