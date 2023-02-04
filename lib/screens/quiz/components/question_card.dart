// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:new_quiz_app/models/questions.dart';
import 'package:new_quiz_app/screens/quiz/components/option.dart';

class QuestionCard extends StatelessWidget {
  const QuestionCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(25),
      ),
      //questions
      child: Column(
        children: [
          Text(
            sample_data[0]['question'],
            style: TextStyle(color: Colors.black, fontSize: 24),
          ),
          SizedBox(height: 10),
          Option(),
          Option(),
          Option(),
          Option(),
        ],
      ),
    );
  }
}