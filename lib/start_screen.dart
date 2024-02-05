import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz, {super.key});

  final void Function() startQuiz;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            'images/quiz-logo.png',
            width: 250,
            color: const Color.fromARGB(200, 237, 227, 246),
          ),
          const SizedBox(height: 80),
          const Text(
            'Learn Flutter the fun way!',
            style: TextStyle(
              fontSize: 24,
              color: Color.fromARGB(255, 237, 227, 246),
            ),
          ),
          const SizedBox(height: 30),
          TextButton.icon(
            onPressed: startQuiz,
            icon: const Icon(Icons.arrow_right_alt,
                color: Color.fromARGB(255, 237, 227, 246)),
            label: const Text(
              'Start Quiz',
              style: TextStyle(
                fontSize: 15,
                color: Color.fromARGB(255, 237, 227, 246),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
