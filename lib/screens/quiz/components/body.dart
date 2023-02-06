// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:new_quiz_app/controllers/question_controller.dart';
import 'package:new_quiz_app/screens/quiz/components/question_card.dart';
import 'progress_bar.dart';

class Body extends StatelessWidget {
  const Body({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    QuestionController _questionController = Get.put(QuestionController());
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
        //content
        SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: ProgressBar(),
              ),
              SizedBox(height: 20),
              //top text
              Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Obx(
                    //display of question number at the top
                    () => Text.rich(
                      TextSpan(
                        text:
                            "Question ${_questionController.questionNumber.value}",
                        style: TextStyle(
                          fontSize: 24,
                        ),
                        children: [
                          TextSpan(
                            text: "/${_questionController.questions.length}",
                            style: TextStyle(
                              fontSize: 24,
                            ),
                          ),
                        ],
                      ),
                    ),
                  )),
              Divider(thickness: 1.5),
              SizedBox(height: 20),
              //card
              Expanded(
                child: PageView.builder(
                  //user can't scroll to the next page
                  physics: NeverScrollableScrollPhysics(),
                  controller: _questionController.pageController,
                  onPageChanged: _questionController.updateTheQnNum,
                  itemCount: _questionController.questions.length,
                  itemBuilder: (context, index) => QuestionCard(
                    question: _questionController.questions[index],
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
