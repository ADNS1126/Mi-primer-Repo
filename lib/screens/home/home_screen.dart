import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Screen'),
      ),
      body: Column(
        children: [
          Text('Quick Actions', style: TextStyle(fontSize: 24)),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ElevatedButton(onPressed: () {}, child: Text('Action 1')), 
              ElevatedButton(onPressed: () {}, child: Text('Action 2')), 
            ],
          ),
          SizedBox(height: 20),
          Text('Select a Category', style: TextStyle(fontSize: 24)),
          DropdownButton<String>(
            items: <String>['Category 1', 'Category 2', 'Category 3']
                .map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(value),
              );
            }).toList(),
            onChanged: (String? newValue) {},
            hint: Text('Choose a category'),
          ),
        ],
      ),
    );
  }
}