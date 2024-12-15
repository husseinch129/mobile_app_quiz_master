import 'package:flutter/material.dart';
import './quiz_screen.dart';

class WelcomeScreen extends StatelessWidget {
  final String name;

  WelcomeScreen({required this.name});

  final List<Map<String, dynamic>> themes = [
    {'name': 'General', 'id': 1},
    {'name': 'Science', 'id': 2},
    {'name': 'History', 'id': 3},
    {'name': 'Sports', 'id': 4},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Welcome to Quiz Master $name!', style:
        TextStyle(fontSize: 14,
          fontWeight: FontWeight.bold,
          color: Colors.white,
          letterSpacing: 1.5)),
        centerTitle: true,
        backgroundColor: Colors.deepPurple,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Choose a Theme: ',
              style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                color: Colors.deepPurple,
                letterSpacing: 1.5),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20),
            ...themes.map((theme) {
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.symmetric(vertical: 15),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => QuizScreen(themeId: theme['id'], themeName: theme['name'],),
                      ),
                    );
                  },
                  child: Text(theme['name']),
                ),
              );
            }),
          ],
        ),
      ),
    );
  }
}