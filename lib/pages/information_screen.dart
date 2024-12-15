import 'package:flutter/material.dart';
import './welcome_screen.dart';

class InformationScreen extends StatefulWidget {
  @override
  _InformationScreenState createState() => _InformationScreenState();
}

class _InformationScreenState extends State<InformationScreen> {
  TextEditingController _nameController = TextEditingController();
  bool _acceptedTerms = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Quiz Master User Agreement',
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.bold,
            color: Colors.white,
            letterSpacing: 1.5,
          )),
        backgroundColor: Colors.deepPurple,

      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            TextField(
              controller: _nameController,
              decoration: InputDecoration(labelText: "Enter your name"),
            ),

            SizedBox(height: 20),

            Row(
              children: [
                Checkbox(
                  value: _acceptedTerms,
                  onChanged: (bool? newValue) {
                    setState(() {
                      _acceptedTerms = newValue!;
                    });
                  },
                ),
                Text('Accept Terms and Conditions'),
              ],
            ),
            SizedBox(height: 20),

            ElevatedButton(
              onPressed: (_nameController.text.isNotEmpty && _acceptedTerms)
                  ? () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => WelcomeScreen(name: _nameController.text),
                  ),
                );
              }
                  : null,
              child: Text("Continue"),
            ),
          ],
        ),
      ),
    );
  }
}
