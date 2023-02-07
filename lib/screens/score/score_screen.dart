import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:new_quiz_app/controllers/question_controller.dart';
import 'package:new_quiz_app/screens/welcome_screen.dart';

class ScoreScreen extends StatelessWidget {
  const ScoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
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
                "${_qnController.correctAns}/${_qnController.questions.length}",
                style: TextStyle(
                  fontWeight: FontWeight.w800,
                  fontSize: 40,
                ),
              ),
              Spacer(),
              GestureDetector(
                onTap: () => Get.to(() => WelcomeScreen()),
                child: Container(
                  child: Text(
                    "Play Again",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                    ),
                  ),
                ),
              ),
              Spacer(),
            ],
          )
        ],
      ),
    );
  }
}
