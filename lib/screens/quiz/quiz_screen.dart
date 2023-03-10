import 'package:flutter/material.dart';
import 'components/body.dart';

class QuizScreen extends StatelessWidget {
  const QuizScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        automaticallyImplyLeading: false,
      ),
      // ignore: prefer_const_constructors
      body: Body(),
    );
  }
}
