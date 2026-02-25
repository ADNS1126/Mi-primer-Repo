class Quiz {
  String title;
  List<Question> questions;
  Difficulty difficulty;

  Quiz(this.title, this.questions, this.difficulty);
}

class Question {
  String question;
  List<String> options;
  String answer;

  Question(this.question, this.options, this.answer);
}

enum Difficulty {
  easy,
  medium,
  hard
}