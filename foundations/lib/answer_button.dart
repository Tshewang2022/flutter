import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {
  // constructor function of the class for the button text and tap handler
  AnswerButton(this.answerText, this.onTap, {super.key});

  // property of the class to display the text on the button
  final String answerText;

  // property of the class, a function to handle the tap on the btn
  final void Function() onTap;
  @override
  // method of the class
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onTap,
      style: ElevatedButton.styleFrom(
        padding: EdgeInsets.symmetric(horizontal: 40, vertical: 10),
        backgroundColor: Colors.deepPurple,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
      ),
      child: Text(answerText, style: TextStyle(color: Colors.white)),
    );
  }
}
