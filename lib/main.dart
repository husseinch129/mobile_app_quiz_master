import 'package:flutter/material.dart';
import './pages/information_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Quiz Master',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      home: InformationScreen(),
    );
  }
}
