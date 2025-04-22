import 'package:flutter/material.dart';

/// **its really a powerfull to develop the app inside the flutter
class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz, {super.key});
  final void Function() startQuiz;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          /** this should be avoided for the large application because it is resouce intensive **/
          // Opacity(
          //   opacity: 0.6,
          //   child: Image.asset('assets/images/quiz-logo.png', width: 300),
          // ),
          /**another way of setting the opacity of the image */
          Image.asset(
            'assets/images/quiz-logo.png',
            width: 300,
            color: const Color.fromARGB(112, 245, 241, 241),
          ),
          SizedBox(height: 80),
          const Text(
            'Learn Flutter the fun way',
            style: TextStyle(
              color: Color.fromARGB(98, 255, 255, 255),
              fontSize: 24,
            ),
          ),
          SizedBox(height: 30),
          OutlinedButton.icon(
            onPressed: startQuiz,
            style: OutlinedButton.styleFrom(foregroundColor: Colors.white),
            label: const Text('Start quiz'),
            icon: const Icon(Icons.arrow_right_alt),
          ),
        ],
      ),
    );
  }
}
