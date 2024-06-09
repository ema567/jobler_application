// ignore_for_file: use_key_in_widget_constructors, library_private_types_in_public_api, prefer_final_fields, prefer_const_constructors

import 'package:flutter/material.dart';

void main() {
  runApp(const Uiquestion());
}

class Uiquestion extends StatelessWidget {
  const Uiquestion({super.key});
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Center(
        child: MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'True or False Quiz',
            home: QuizPage()),
      ),
    );
  }
}

class QuizPage extends StatefulWidget {
  @override
  _QuizPageState createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  List<Question> _questions = [
    Question('1- "UI" stand for User Interface in web design?', true),
    Question(
        '2- User Interface (UI) Design refers to the process of designing web interfaces that are easy for users to understand and navigate?',
        true),
    Question(
        '3- Receiver in the MVC architecture that receives events?', false),
    Question(
        '4- In the model-view-controlled (MVC) architecture,the model defines the data-access layer',
        true),
    Question(
        '5- An independently deliverable piece of functionality providing access to its services through interface is called software measurement',
        false),
   Question('6- UX product designers focus on user satisfaction and ensure that the product actually fulfills the user’s needs.', 
   true),
   Question('7- UX stands for User experience ?', 
   true),
    Question('8- User experience (UX) design is the process design teams use to create products that provide meaningful and relevant experiences to users.', 
    true),
     Question('9- The primary goal of UX design is to Creating visually stunning designs.',
      false),
      Question('10- Usability refer to in UX design to The visual design of the product.', 
      false),

  ];

  int _currentQuestionIndex = 0;
  bool _answer = false; // default answer
  int _score = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            'Ui/Ux Test',
            selectionColor: Colors.deepPurple[300],
            style: TextStyle(fontSize: 20),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center, // Add this
          children: [
            Text(
              _questions[_currentQuestionIndex].text,
              style: TextStyle(fontSize: 24),
              textAlign: TextAlign.center, // Add this
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      _answer = true;
                      _checkAnswer();
                      _nextQuestion();
                    });
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.deepPurple[300],
                  ),
                  child: Text(
                    'True',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      _answer = false;
                      _checkAnswer();
                      _nextQuestion();
                    });
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.deepPurple[300],
                  ),
                  child: Text(
                    'False',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  void _checkAnswer() {
    if (_answer == _questions[_currentQuestionIndex].correct) {
      _score++;
    }
  }

  void _nextQuestion() {
    if (_currentQuestionIndex < _questions.length - 1) {
      _currentQuestionIndex++;
    } else {
      _showResults();
    }
  }

  void _showResults() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Results'),
          content: Text(_score < 5
              ? 'Not Qualified'
              : _score > 5
                  ? 'Qualified'
                  : 'Not Qualified'),
          actions: [
            Center(
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    minimumSize: const Size(30, 40),
                    textStyle: const TextStyle(fontSize: 10),
                    backgroundColor: Colors.deepPurple[300],
                    foregroundColor: Colors.white,
                  ),
                  onPressed: () {Navigator.pushNamed(context, '/course');},
                  child: const Text(
                    "Back to courses",
                    style: TextStyle(fontSize: 15),
                  )),
            ),
            const SizedBox(
              height: 10,
            ),
            Center(
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    minimumSize: const Size(155, 40),
                    textStyle: const TextStyle(fontSize: 10),
                    backgroundColor: Colors.deepPurple[300],
                    foregroundColor: Colors.white,
                  ),
                  onPressed: () {Navigator.pushNamed(context, '/Jobadvertisement');},
                  child: const Text(
                    "Continue",
                    style: TextStyle(fontSize: 15),
                  ),
                  ),
            ),
          ],
        );
      },
    );
  }
}

class Question {
  String text;
  bool correct;

  Question(this.text, this.correct);
}
