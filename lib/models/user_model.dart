class User {
  String name;
  String email;
  String password;

  User({required this.name, required this.email, required this.password});
}

class Achievement {
  String title;
  String description;
  DateTime date;

  Achievement({required this.title, required this.description, required this.date});
}
