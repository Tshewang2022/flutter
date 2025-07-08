import 'package:flutter/material.dart';
// import 'package:foundations/data/questions.dart';

class QuestionsSummary extends StatelessWidget {
  const QuestionsSummary(this.summarData, {super.key});
  final List<Map<String, Object>> summarData;
// everything is a widget in flutter; just need a right concept
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: SingleChildScrollView(
        child: Column(
          children:
              summarData.map((data) {
                return Row(
                  children: [
                    Text(((data['question_index'] as int) + 1).toString()),
                    Column(
                      children: [
                        Text(data['questions'] as String),
                        SizedBox(height: 5),
                        Text(data['correct_answers'] as String),
                        Text(data['user_answer'] as String),
                      ],
                    ),
                  ],
                );
              }).toList(),
        ),
      ),
    );
  }
}
