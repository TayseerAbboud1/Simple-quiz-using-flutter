import "package:flutter/material.dart";
import 'package:project_quiz/models/answers_model.dart';
import 'package:project_quiz/models/quiz_model.dart';
import 'package:project_quiz/splashscreen.dart';

import 'models/questions_model.dart';
import 'quiz.dart';
import 'result.dart';


int counter = 0;

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SplashScreen(),
    );
  }
}
