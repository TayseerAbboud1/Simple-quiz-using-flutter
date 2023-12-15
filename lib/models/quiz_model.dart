import 'package:project_quiz/models/questions_model.dart';

class QuizModel{

  List<QuestionsModel> questions;
  bool isFinished;

  QuizModel(this.questions, this.isFinished);
}