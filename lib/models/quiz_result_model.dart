class AnswerResult {
  final String answer;
  final bool isCorrect;

  AnswerResult({required this.answer, required this.isCorrect});
}

class QuizResult {
  final String quizId;
  final List<AnswerResult> answers;
  final DateTime submittedAt;

  QuizResult({required this.quizId, required this.answers}) : submittedAt = DateTime.now();
}