// ignore_for_file: prefer_const_constructors
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:new_quiz_app/controllers/name_controller.dart';
import 'package:new_quiz_app/screens/quiz/quiz_screen.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    NameController inputController = Get.put(NameController());
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
                  'Riddle Rush',
                  style: GoogleFonts.bungeeSpice(
                    shadows: const <Shadow>[
                      Shadow(
                        offset: Offset(1.0, 1.0),
                        blurRadius: 3.0,
                        color: Color.fromARGB(255, 0, 0, 0),
                      ),
                      Shadow(
                        offset: Offset(1.0, 1.0),
                        blurRadius: 8.0,
                        color: Color.fromARGB(125, 0, 0, 255),
                      ),
                    ],
                    fontWeight: FontWeight.bold,
                    fontSize: 50,
                  ),
                ),
                Spacer(),
                Text('Enter your name below'),
                SizedBox(height: 10),
                TextField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.grey,
                    hintText: "NickName",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(12)),
                    ),
                  ),
                  //this will run the code in question controller file to change the name
                  onChanged: inputController.updateName,
                ),
                Spacer(),
                InkWell(
                  onTap: () {
                    Get.snackbar(
                        'Welcome ${inputController.nickName}', 'Enjoy the game',
                        duration: Duration(seconds: 1),
                        snackPosition: SnackPosition.BOTTOM);
                    Future.delayed(Duration(milliseconds: 1500), () {
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
                    child: Text(
                      'Let\'s start',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
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
