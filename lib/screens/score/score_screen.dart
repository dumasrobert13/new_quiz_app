// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:new_quiz_app/controllers/name_controller.dart';
import 'package:new_quiz_app/controllers/question_controller.dart';
import 'package:new_quiz_app/screens/welcome_screen.dart';

class ScoreScreen extends StatelessWidget {
  const ScoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // ignore: no_leading_underscores_for_local_identifiers
    QuestionController _qnController = Get.put(QuestionController());
    // ignore: no_leading_underscores_for_local_identifiers
    NameController _nickName = Get.put(NameController());
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
                style: GoogleFonts.bungeeSpice(
                  fontWeight: FontWeight.bold,
                  fontSize: 40,
                ),
              ),
              Spacer(),
              Text(
                "${_nickName.nickName}",
                style: TextStyle(
                  fontWeight: FontWeight.w800,
                  fontSize: 35,
                ),
              ),
              Text(
                "${_nickName.numOfCorrectAns}/${_qnController.questions.length}",
                style: TextStyle(
                  fontWeight: FontWeight.w800,
                  fontSize: 40,
                ),
              ),
              Spacer(),
              FloatingActionButton.extended(
                onPressed: () {
                  _nickName.reset();
                  Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(builder: (context) => WelcomeScreen()),
                      (Route<dynamic> route) => false);
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
