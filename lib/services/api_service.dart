import 'package:retrofit/http.dart';
import 'package:dio/dio.dart';

part 'api_service.g.dart';

@RestApi(baseUrl: "https://api.yourquizapp.com/")
abstract class ApiService {
  factory ApiService(Dio dio, {String baseUrl}) = _ApiService;

  @GET("quiz")
  Future<List<Quiz>> getQuizzes();

  @POST("user")
  Future<User> createUser(@Body() User user);

  @GET("results/{userId}")
  Future<List<Result>> getResults(@Path("userId") String userId);

  @GET("leaderboard")
  Future<List<LeaderboardEntry>> getLeaderboard();
}

class Quiz {
  final String id;
  final String title;

  Quiz({required this.id, required this.title});

  factory Quiz.fromJson(Map<String, dynamic> json) {
    return Quiz(
      id: json['id'],
      title: json['title'],
    );
  }
}

class User {
  final String username;
  final String email;

  User({required this.username, required this.email});

  Map<String, dynamic> toJson() {
    return {
      'username': username,
      'email': email,
    };
  }
}

class Result {
  final String quizId;
  final int score;

  Result({required this.quizId, required this.score});

  factory Result.fromJson(Map<String, dynamic> json) {
    return Result(
      quizId: json['quizId'],
      score: json['score'],
    );
  }
}

class LeaderboardEntry {
  final String username;
  final int score;

  LeaderboardEntry({required this.username, required this.score});

  factory LeaderboardEntry.fromJson(Map<String, dynamic> json) {
    return LeaderboardEntry(
      username: json['username'],
      score: json['score'],
    );
  }
}