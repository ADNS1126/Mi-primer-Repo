import 'package:flutter/material.dart';

class UserStatsWidget extends StatelessWidget {
  final int userScore;
  final int userLevel;

  UserStatsWidget({required this.userScore, required this.userLevel});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(16.0),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Text(
              'User Statistics',
              style: Theme.of(context).textTheme.headline6,
            ),
            SizedBox(height: 10),
            Text('Score: \$userScore'),
            Text('Level: \$userLevel'),
          ],
        ),
      ),
    );
  }
}