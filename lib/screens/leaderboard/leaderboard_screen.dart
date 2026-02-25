import 'package:flutter/material.dart';

class LeaderboardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Leaderboard'),
      ),
      body: Column(
        children: <Widget>[
          GlobalLeaderboard(),
          CategoryLeaderboard(),
        ],
      ),
    );
  }
}

class GlobalLeaderboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text('Global Leaderboard', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
          // Add your global leaderboard data here
        ],
      ),
    );
  }
}

class CategoryLeaderboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text('Category Leaderboard', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
          // Add your category leaderboard data here
        ],
      ),
    );
  }
}