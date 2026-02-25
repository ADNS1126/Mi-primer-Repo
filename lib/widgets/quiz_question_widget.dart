import 'package:flutter/material.dart';

class QuizQuestionWidget extends StatelessWidget {
  final String question;
  final List<String> options;

  QuizQuestionWidget({required this.question, required this.options});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          question,
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        ...options.map((option) {
          return RadioListTile<String>(
            title: Text(option),
            value: option,
            groupValue: '', // This should be handled with actual state management
            onChanged: (value) {}, // Placeholder for option selection logic
          );
        }).toList(),
      ],
    );
  }
}