import 'package:http/http.dart' as http;
import 'dart:convert';

class QuizProvider {
  final String apiUrl;

  QuizProvider(this.apiUrl);

  Future<List<dynamic>> fetchQuizzes() async {
    final response = await http.get(Uri.parse(apiUrl));
    if (response.statusCode == 200) {
      return json.decode(response.body);
    } else {
      throw Exception('Failed to load quizzes');
    }
  }
}