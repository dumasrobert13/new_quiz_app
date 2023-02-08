// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:new_quiz_app/models/questions.dart';
import 'package:new_quiz_app/screens/score/score_screen.dart';

class QuestionController extends GetxController
    with GetSingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation _animation;
  Animation get animation => _animation;

  late PageController _pageController;
  PageController get pageController => _pageController;

  final List<Question> _questions = sample_data
      .map(
        (question) => Question(
            id: question['id'],
            question: question['question'],
            options: question['options'],
            answer: question['answer_index']),
      )
      .toList();

  List<Question> get questions => _questions;

  //bool to tell if user chose an answer
  bool _isAnswered = false;
  bool get isAnswered => _isAnswered;

  //int for telling the correct answer in the question
  late int _correctAns;
  int get correctAns => _correctAns;

  //int for storing the answer of the user
  late int _selectedAns;
  int get selectedAns => _selectedAns;

  //int for telling the current number of the question
  final RxInt _questionNumber = 1.obs;
  RxInt get questionNumber => _questionNumber;

  //this will be the score of the user
  late int _numOfCorrectAns = 0;
  int get numOfCorrectAns => _numOfCorrectAns;

  //when this whole widget is called, this will run
  @override
  void onInit() {
    _animationController =
        AnimationController(duration: Duration(seconds: 10), vsync: this);
    _animation = Tween<double>(begin: 0, end: 1).animate(_animationController)
      ..addListener(() {
        update();
      })
      //if the timer ends, it will end the game
      ..addStatusListener((status) {
        if (status == AnimationStatus.completed) {
          // Animation is completed, navigate to Score Screen
          Get.to(() => ScoreScreen());
        }
      });
    //start of animation
    _animationController.forward();
    _pageController = PageController();
    super.onInit();
  }

  @override
  void onClose() {
    super.onClose();
    _animationController.dispose();
    _pageController.dispose();
  }

  //this will run if user choose an answer
  void checkAns(Question question, int selectedIndex) {
    _isAnswered = true;
    _correctAns = question.answer;
    _selectedAns = selectedIndex;

    if (_correctAns == _selectedAns) _numOfCorrectAns++;

    //this will stop the counter
    _animationController.stop();
    update();

    //it will go to the next page once answered
    Future.delayed(
      Duration(milliseconds: 250),
      () {
        nextQuestion();
      },
    );
  }

  //this will turn to next page
  void nextQuestion() {
    if (_questionNumber.value != _questions.length) {
      //will reset the bool to tell if user chose an answer
      _isAnswered = false;
      //animation for page turn
      _pageController.nextPage(
          duration: Duration(milliseconds: 250), curve: Curves.ease);

      //will reset the counter
      _animationController.reset();
      // then start again
      _animationController.forward();
    } else {
      Get.to(() => ScoreScreen());
    }
  }

  //this will update the question number
  void updateTheQnNum(int index) {
    _questionNumber.value = index + 1;
  }
}
