// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:new_quiz_app/screens/quiz/quiz_screen.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
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
          //start of content
          SafeArea(
              child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Spacer(flex: 2),
                Text(
                  'Lets Play',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                  ),
                ),
                Text('Enter your name below'),
                Spacer(),
                TextField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.grey,
                    hintText: "NickName",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(12)),
                    ),
                  ),
                ),
                Spacer(),
                InkWell(
                  onTap: () {
                    Get.snackbar('Welcome', 'Enjoy the game',
                        duration: Duration(seconds: 2),
                        snackPosition: SnackPosition.BOTTOM);
                    Future.delayed(Duration(milliseconds: 2500), () {
                      Get.to(() => QuizScreen());
                    });
                  },
                  child: Container(
                    width: double.infinity,
                    alignment: Alignment.center,
                    padding: EdgeInsets.all(15),
                    decoration: BoxDecoration(
                      color: Color(0xff395B64),
                      borderRadius: BorderRadius.all(Radius.circular(12)),
                    ),
                    child: Text('Let\'s start'),
                  ),
                ),
                Spacer(flex: 2),
              ],
            ),
          ))
        ],
      ),
    );
  }
}
