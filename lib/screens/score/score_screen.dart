// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:new_quiz_app/controllers/question_controller.dart';
import 'package:new_quiz_app/screens/quiz/quiz_screen.dart';

class ScoreScreen extends StatelessWidget {
  const ScoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // ignore: no_leading_underscores_for_local_identifiers
    QuestionController _qnController = Get.put(QuestionController());
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Image.asset(
              "lib/assets/bg.png",
              fit: BoxFit.cover,
            ),
          ),
          Column(
            children: [
              Spacer(),
              Text(
                "Score",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 40,
                ),
              ),
              Spacer(),
              Text(
                "${_qnController.numOfCorrectAns}/${_qnController.questions.length}",
                style: TextStyle(
                  fontWeight: FontWeight.w800,
                  fontSize: 40,
                ),
              ),
              Spacer(),
              FloatingActionButton.extended(
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => QuizScreen()),
                  );
                },
                label: Text(
                  "Play Again",
                  style: TextStyle(color: Colors.white),
                ),
                backgroundColor: Color(0xff395B64),
              ),
              Spacer(),
            ],
          )
        ],
      ),
    );
  }
}
