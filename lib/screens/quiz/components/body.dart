// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:new_quiz_app/screens/quiz/components/question_card.dart';
import 'progress_bar.dart';

class Body extends StatelessWidget {
  const Body({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        //background
        SizedBox(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Image.asset(
            "lib/assets/bg.png",
            fit: BoxFit.cover,
          ),
        ),
        SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            //content
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ProgressBar(),
                SizedBox(height: 20),
                //top text
                Text.rich(
                  TextSpan(
                    text: 'Question 1',
                    style: TextStyle(
                      fontSize: 24,
                    ),
                  ),
                ),
                Divider(thickness: 1.5),
                SizedBox(height: 20),
                //card
                Expanded(
                  child: PageView.builder(
                    itemBuilder: (context, index) => QuestionCard(),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
