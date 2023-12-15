import 'package:flutter/material.dart';
import 'package:project_quiz/models/questions_model.dart';
import 'package:project_quiz/result.dart';
import 'answer.dart';
import 'main.dart';
import 'question.dart';

class Quiz extends StatefulWidget {
  final List<QuestionsModel> questions;
  int score;
  final Function answerquestion;

  Quiz(
      {super.key,
      required this.questions,
      required this.answerquestion,
      required this.score});

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  @override
  Widget build(BuildContext context) {

    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          Question(widget.questions[counter].question),
          ...(widget.questions[counter].answers).map((answer) {
            return Answer(answer, counter);
          }).toList(),
          InkWell(
            onTap: () {
              if (counter < widget.questions.length-1) {
                setState(() {
                  // for(int i=0; i<widget.questions[counter].answers.length; i++)
                  counter++;
                });
              }else{
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Result(),
                  ),
                );
              }
            },
            child: Container(
              color: Colors.blueGrey,
              child: Text('Next Question'),
            ),
          )
        ],
      ),
    );
  }
}
