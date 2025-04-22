import 'package:flutter/material.dart';
import 'package:foundations/answer_button.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key});
  @override
  State<QuestionsScreen> createState() {
    return _QuestionsScreenState();
  }
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  @override
  // Widget in flutter is the reusable components, just like in other framework
  // and we create the custom widgets, just like the other framework
  Widget build(context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('The questions', style: TextStyle(color: Colors.white)),
          SizedBox(height: 30),
          // without using the namedparameter
          AnswerButton('Answer 1', () {}),

          //with using the namedparameter, however we need to change it
          // inside the widgets
          // AnswerButton(answerText:'', onTap:(){},),
        ],
      ),
    );
  }
}
