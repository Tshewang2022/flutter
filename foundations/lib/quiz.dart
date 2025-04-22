import 'package:flutter/material.dart';
import 'package:foundations/questions_screen.dart';
import 'package:foundations/start_screen.dart';

// When buidling the statefilwidget, we need two class
class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  //// the methods of changing the screen
  var activeScreen = 'start-screen';

  void switchScreen() {
    setState(() {
      activeScreen = 'questions-screen';
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 132, 72, 142),
                Color.fromARGB(255, 104, 18, 119),
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child:
              activeScreen == 'start-screen'
                  ? StartScreen(switchScreen)
                  : const QuestionsScreen(),
        ),
      ),
    );
  }
}
