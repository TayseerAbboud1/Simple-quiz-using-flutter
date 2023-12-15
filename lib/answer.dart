import "package:flutter/material.dart";
import "package:project_quiz/main.dart";
import "package:project_quiz/models/answers_model.dart";

class Answer extends StatefulWidget {
  final AnswersModel answersModel;
  int questionIndex;

  Answer(this.answersModel, this.questionIndex);

  @override
  State<Answer> createState() => _AnswerState();
}

class _AnswerState extends State<Answer> {

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
        onTap: () {
          setState(() {
            widget.answersModel.isClicked = !widget.answersModel.isClicked;
          });
        },
        child: Container(
          width: double.infinity,
          padding: EdgeInsets.all(15),
          color: widget.answersModel.isClicked
              ? (widget.answersModel.isTrue ? Colors.green : Colors.red)
              : Colors.blue[300],
          child: Center(child: Text(widget.answersModel.text)),
        ),
      ),
    );
  }
}
