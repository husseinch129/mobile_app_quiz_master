import 'package:flutter/material.dart';
import 'dart:convert';

class QuizScreen extends StatefulWidget {
  final int themeId;
  final String themeName;

  QuizScreen({required this.themeId, required this.themeName});

  @override
  _QuizScreenState createState() => _QuizScreenState();

  final List<Map<String, dynamic>> sportsQuestions = [
    {
      'question': 'Who won the FIFA World Cup in 2018?',
      'options': ['France', 'Croatia', 'Germany', 'Brazil'],
      'answer': 'France',
    },
    {
      'question': 'Which country hosted the 2008 Summer Olympics?',
      'options': ['China', 'Japan', 'USA', 'Australia'],
      'answer': 'China',
    },
    {
      'question': 'Which football team has won the most Super Bowls?',
      'options': ['New England Patriots', 'Dallas Cowboys', 'Pittsburgh Steelers', 'San Francisco 49ers'],
      'answer': 'New England Patriots',
    },
    {
      'question': 'Who is the all-time top scorer in the NBA?',
      'options': ['Kareem Abdul-Jabbar', 'LeBron James', 'Michael Jordan', 'Kobe Bryant'],
      'answer': 'Kareem Abdul-Jabbar',
    },
    {
      'question': 'What is the highest score in a single cricket match?',
      'options': ['Sachin Tendulkar', 'Ricky Ponting', 'Chris Gayle', 'Brian Lara'],
      'answer': 'Brian Lara',
    },
    {
      'question': 'What year did the first modern Olympic Games take place?',
      'options': ['1896', '1900', '1924', '1912'],
      'answer': '1896',
    },
    {
      'question': 'Which country won the most medals in the 2020 Summer Olympics?',
      'options': ['USA', 'China', 'Russia', 'Japan'],
      'answer': 'USA',
    },
    {
      'question': 'Who holds the record for the most goals in a World Cup?',
      'options': ['Marta', 'Miroslav Klose', 'Pele', 'Ronaldo'],
      'answer': 'Miroslav Klose',
    },
    {
      'question': 'Who won the 2016 NBA Finals?',
      'options': ['Cleveland Cavaliers', 'Golden State Warriors', 'Miami Heat', 'San Antonio Spurs'],
      'answer': 'Cleveland Cavaliers',
    },
    {
      'question': 'Which city hosted the 2016 Summer Olympics?',
      'options': ['Rio de Janeiro', 'London', 'Beijing', 'Sydney'],
      'answer': 'Rio de Janeiro',
    },
  ];

  final List<Map<String, dynamic>> historyQuestions = [
    {
      'question': 'Who was the first president of the United States?',
      'options': ['George Washington', 'Abraham Lincoln', 'Thomas Jefferson', 'John Adams'],
      'answer': 'George Washington',
    },
    {
      'question': 'In what year did World War II end?',
      'options': ['1942', '1945', '1940', '1950'],
      'answer': '1945',
    },
    {
      'question': 'Who was the leader of the Soviet Union during World War II?',
      'options': ['Joseph Stalin', 'Vladimir Lenin', 'Nikita Khrushchev', 'Leon Trotsky'],
      'answer': 'Joseph Stalin',
    },
    {
      'question': 'What empire was ruled by Julius Caesar?',
      'options': ['Roman Empire', 'Ottoman Empire', 'Byzantine Empire', 'Mongol Empire'],
      'answer': 'Roman Empire',
    },
    {
      'question': 'Who discovered America in 1492?',
      'options': ['Christopher Columbus', 'Leif Erikson', 'Ferdinand Magellan', 'Marco Polo'],
      'answer': 'Christopher Columbus',
    },
    {
      'question': 'In what year did the Berlin Wall fall?',
      'options': ['1989', '1991', '1987', '1978'],
      'answer': '1989',
    },
    {
      'question': 'Who was the first emperor of China?',
      'options': ['Qin Shi Huang', 'Kublai Khan', 'Sun Yat-sen', 'Wu Zetian'],
      'answer': 'Qin Shi Huang',
    },
    {
      'question': 'Which country was formerly known as Persia?',
      'options': ['Iran', 'Iraq', 'Turkey', 'Egypt'],
      'answer': 'Iran',
    },
    {
      'question': 'Who was the first female prime minister of the United Kingdom?',
      'options': ['Margaret Thatcher', 'Theresa May', 'Queen Elizabeth', 'Harriet Harman'],
      'answer': 'Margaret Thatcher',
    },
    {
      'question': 'Which war was fought between the North and South in the United States?',
      'options': ['Civil War', 'Revolutionary War', 'World War I', 'War of 1812'],
      'answer': 'Civil War',
    },
  ];

  final List<Map<String, dynamic>> scienceQuestions = [
    {
      'question': 'What is the chemical symbol for water?',
      'options': ['H2O', 'CO2', 'O2', 'CH4'],
      'answer': 'H2O',
    },
    {
      'question': 'What planet is known as the Red Planet?',
      'options': ['Mars', 'Earth', 'Jupiter', 'Saturn'],
      'answer': 'Mars',
    },
    {
      'question': 'What is the hardest natural substance on Earth?',
      'options': ['Diamond', 'Gold', 'Iron', 'Platinum'],
      'answer': 'Diamond',
    },
    {
      'question': 'What is the chemical symbol for gold?',
      'options': ['Au', 'Ag', 'Fe', 'Pb'],
      'answer': 'Au',
    },
    {
      'question': 'What is the most common element in the Earth\'s crust?',
      'options': ['Oxygen', 'Silicon', 'Iron', 'Magnesium'],
      'answer': 'Oxygen',
    },
    {
      'question': 'Who developed the theory of relativity?',
      'options': ['Albert Einstein', 'Isaac Newton', 'Niels Bohr', 'Galileo Galilei'],
      'answer': 'Albert Einstein',
    },
    {
      'question': 'What is the smallest unit of matter?',
      'options': ['Atom', 'Molecule', 'Electron', 'Proton'],
      'answer': 'Atom',
    },
    {
      'question': 'What gas do plants absorb for photosynthesis?',
      'options': ['Carbon dioxide', 'Oxygen', 'Nitrogen', 'Hydrogen'],
      'answer': 'Carbon dioxide',
    },
    {
      'question': 'What is the chemical symbol for sodium?',
      'options': ['Na', 'K', 'S', 'Cl'],
      'answer': 'Na',
    },
    {
      'question': 'What is the main gas found in the Earth’s atmosphere?',
      'options': ['Nitrogen', 'Oxygen', 'Carbon dioxide', 'Hydrogen'],
      'answer': 'Nitrogen',
    },
  ];

  final List<Map<String, dynamic>> generalQuestions = [
    {
      'question': 'What is the capital of France?',
      'options': ['Paris', 'Berlin', 'Rome', 'Madrid'],
      'answer': 'Paris',
    },
    {
      'question': 'Which element has the chemical symbol O?',
      'options': ['Oxygen', 'Gold', 'Osmium', 'Ozone'],
      'answer': 'Oxygen',
    },
    {
      'question': 'What is the largest planet in our solar system?',
      'options': ['Jupiter', 'Saturn', 'Earth', 'Mars'],
      'answer': 'Jupiter',
    },
    {
      'question': 'What is the longest river in the world?',
      'options': ['Nile', 'Amazon', 'Yangtze', 'Mississippi'],
      'answer': 'Nile',
    },
    {
      'question': 'How many continents are there?',
      'options': ['7', '6', '5', '8'],
      'answer': '7',
    },
    {
      'question': 'What is the largest mammal on Earth?',
      'options': ['Blue Whale', 'African Elephant', 'Giraffe', 'Orca'],
      'answer': 'Blue Whale',
    },
    {
      'question': 'Which is the smallest country in the world?',
      'options': ['Vatican City', 'Monaco', 'Nauru', 'San Marino'],
      'answer': 'Vatican City',
    },
    {
      'question': 'What is the currency of Japan?',
      'options': ['Yen', 'Won', 'Peso', 'Rupee'],
      'answer': 'Yen',
    },
    {
      'question': 'Who wrote the play "Romeo and Juliet"?',
      'options': ['William Shakespeare', 'Charles Dickens', 'Jane Austen', 'Mark Twain'],
      'answer': 'William Shakespeare',
    },
    {
      'question': 'Which animal is known as the King of the Jungle?',
      'options': ['Lion', 'Tiger', 'Elephant', 'Bear'],
      'answer': 'Lion',
    },
  ];  
}

class _QuizScreenState extends State<QuizScreen> {
  int _currentQuestionIndex = 0;
  int _score = 0;
  bool _isLoading = true;
  List<dynamic> _questions = [];

  @override
  void initState() {
    super.initState();
    _fetchQuestions();
  }

  Future<void> _fetchQuestions() async {
    switch (widget.themeId) {
      case 1:
        _questions = widget.generalQuestions ;
        break;
      case 2:
        _questions = widget.scienceQuestions ;
        break;
      case 3:
        _questions = widget.historyQuestions;
        break;
      case 4:
        _questions = widget.sportsQuestions;
        break;
      default:
        _questions = [];
    }
    _questions.shuffle();

    setState(() {
          _questions = _questions.take(5).toList();
          _isLoading = false;
        });
  }

  void _answerQuestion(String selectedAnswer) {
    if (selectedAnswer == _questions[_currentQuestionIndex]['answer']) {
      _score++;
    }
    setState(() {
      if (_currentQuestionIndex < 4) {
        _currentQuestionIndex++;
      } else {
        _showScoreDialog();
      }
    });
  }

  void _showScoreDialog() {
    showDialog(
      context: context,
      builder: (ctx) => AlertDialog(
        title: Text('Quiz Over!', style:
        TextStyle(fontSize: 14,
            fontWeight: FontWeight.bold,
            color: Colors.deepPurple,
            letterSpacing: 1.5)),
        content: Text('Your score is: $_score / 5', style:
        TextStyle(fontSize: 14,
            fontWeight: FontWeight.bold,
            color: Colors.red,
            letterSpacing: 1.5)),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.of(ctx).pop();
              setState(() {
                _score = 0;
                _currentQuestionIndex = 0;
                _isLoading = true;
              });
              _fetchQuestions();
            },
            child: Text('Restart Quiz'),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    if (_isLoading) {
      return Scaffold(
        appBar: AppBar(title: Text('Quiz Master theme ${widget.themeName}', style:
        TextStyle(fontSize: 14,
        fontWeight: FontWeight.bold,
        color: Colors.white,
            letterSpacing: 1.5)), backgroundColor: Colors.deepPurple)
      );
    }

    final question = _questions[_currentQuestionIndex];
    final options = List<String>.from(question['options'])
      ..shuffle();

    return Scaffold(
      appBar: AppBar(title: Text('Quiz Master theme ${widget.themeName}', style:
      TextStyle(fontSize: 14,
          fontWeight: FontWeight.bold,
          color: Colors.white,
          letterSpacing: 1.5)), centerTitle: true, backgroundColor: Colors.deepPurple),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Card(
              elevation: 4,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  question['question'],
                  style: TextStyle(fontSize: 12,
                      fontWeight: FontWeight.bold,
                      color: Colors.deepPurple,
                      letterSpacing: 1.5),
                ),
              ),
            ),
            SizedBox(height: 20),
            ...options.map((option) => Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: ElevatedButton(
                onPressed: () => _answerQuestion(option),
                child: Text(option),
              ),
            )),
            Spacer(),
            Text(
              'Question ${_currentQuestionIndex + 1} / 5',
              style: TextStyle( fontSize: 12,
                      fontWeight: FontWeight.bold,
                      color: Colors.red,
                      letterSpacing: 1.5),
            ),
          ],
        ),
      ),
    );
  }
}
