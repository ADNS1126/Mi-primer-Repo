import 'package:flutter/material.dart';

class QuizGameScreen extends StatefulWidget {
  @override
  _QuizGameScreenState createState() => _QuizGameScreenState();
}

class _QuizGameScreenState extends State<QuizGameScreen> {
  List<String> questions = [
    'What is the capital of France?',
    'What is 2 + 2?',
    'What color is the sky?'
  ];
  List<List<String>> options = [
    ['Paris', 'London', 'Berlin'],
    ['3', '4', '5'],
    ['Blue', 'Red', 'Green']
  ];
  List<int> answers = [0, 1, 0]; // Correct options index

  int currentQuestionIndex = 0;
  int score = 0;
  int timer = 30; // 30 seconds timer
  late Timer countdownTimer;

  @override
  void initState() {
    super.initState();
    startTimer();
  }

  void startTimer() {
    countdownTimer = Timer.periodic(Duration(seconds: 1), (timer) {
      if (this.timer > 0) {
        setState(() {
          this.timer--;
        });
      } else {
        countdownTimer.cancel();
        showResult();
      }
    });
  }

  void answerQuestion(int selectedOption) {
    if (selectedOption == answers[currentQuestionIndex]) {
      score++;
    }
    nextQuestion();
  }

  void nextQuestion() {
    if (currentQuestionIndex < questions.length - 1) {
      setState(() {
        currentQuestionIndex++;
      });
    } else {
      countdownTimer.cancel();
      showResult();
    }
  }

  void showResult() {
    showDialog(
      context: context,
      builder: (ctx) => AlertDialog(
        title: Text('Quiz Finished!'),
        content: Text('Your score: $score/${questions.length}'),
        actions: <Widget>[
          TextButton(
            child: Text('Close'),
            onPressed: () {
              Navigator.of(ctx).pop();
              Navigator.of(ctx).pop(); // Close the quiz game screen
            },
          )
        ],
      ),
    );
  }

  @override
  void dispose() {
    countdownTimer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Quiz Game'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(questions[currentQuestionIndex],
              style: TextStyle(fontSize: 24),
            ),
            SizedBox(height: 20),
            ...List.generate(options[currentQuestionIndex].length, (index) {
              return ElevatedButton(
                onPressed: () => answerQuestion(index),
                child: Text(options[currentQuestionIndex][index]),
              );
            }),
            SizedBox(height: 20),
            Text('Time remaining: $timer seconds'),
          ],
        ),
      ),
    );
  }
}