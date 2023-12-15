import 'package:flutter/material.dart';
import 'package:project_quiz/quiz.dart';
import 'package:project_quiz/result.dart';

import 'models/answers_model.dart';
import 'models/questions_model.dart';
import 'models/quiz_model.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  var totalscore = 0;
  final QuizModel quiz = QuizModel(  [
    QuestionsModel(
      'What is my favorite color?',
      [
        AnswersModel('blue',  false, false),
        AnswersModel('black',  true, false),
        AnswersModel('green',  false, false),
        AnswersModel('white', false, false),
      ],
    ),QuestionsModel(
      'What is my favorite sport?',
      [
        AnswersModel('ping pong', false, false),
        AnswersModel('football', false, false),
        AnswersModel('swimming',  false, false),
        AnswersModel('chess', true, false),
      ],
    ),QuestionsModel(
      'Who is my favorite instructor?',
      [
        AnswersModel('Youssef', false, false),
        AnswersModel('Mahmoud',false, false),
        AnswersModel('Ihab', false, false),
        AnswersModel('Tayseer',  true, false),
      ],
    ),
  ], false);



  var _questionIndex = 0;

  void _answerquestion(int score) {
    setState(() {
      _questionIndex++;
    });
    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Quiz App"),
        backgroundColor: Colors.grey,
      ),
      body: Quiz(
          score: totalscore,
          questions: quiz.questions,
          answerquestion: _answerquestion),
    );
  }
}
