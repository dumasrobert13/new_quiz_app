// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:new_quiz_app/screens/quiz/quiz_screen.dart';
// ignore: unused_import
import 'package:new_quiz_app/screens/welcome_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Quiz App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: QuizScreen(),
    );
  }
}
