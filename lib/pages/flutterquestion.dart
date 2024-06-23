// ignore_for_file: library_private_types_in_public_api, prefer_final_fields, prefer_const_constructors, use_key_in_widget_constructors, prefer_for_elements_to_map_fromiterable

import 'package:flutter/material.dart';

void main() {
  runApp(const Flutterquestion());
}

class Flutterquestion extends StatelessWidget {
  const Flutterquestion({super.key});
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

class ExpertSystem {
  List<Question> _questions;
  int _currentQuestionIndex;
  Map<int, double> _knowledgeLevel;

  ExpertSystem(
      {required List<Question> questions, required int currentQuestionIndex})
      : _questions = questions,
        _currentQuestionIndex = currentQuestionIndex,
        _knowledgeLevel = Map.fromIterable(
          questions.asMap().keys,
          key: (k) => k,
          value: (k) =>
              0.5, // Initialize knowledge level to 0.5 for all questions
        );

  void setQuestions(List<Question> questions) {
    _questions = questions;
    _knowledgeLevel = Map.fromIterable(
      questions.asMap().keys,
      key: (k) => k,
      value: (k) => 0.5, // Update the knowledge level map
    );
  }

  Question? getNextQuestion() {
    if (_currentQuestionIndex < _questions.length - 1) {
      _currentQuestionIndex++;
      return _questions[_currentQuestionIndex];
    }
    return null;
  }

  void updateKnowledgeLevel(bool correctAnswer, int questionIndex) {
    // Update the knowledge level based on the expert system's logic
    double currentKnowledgeLevel = _knowledgeLevel[questionIndex] ?? 0.5;
    double updatedKnowledgeLevel = correctAnswer
        ? currentKnowledgeLevel +
            0.1 // Increase knowledge level by 0.1 for correct answer
        : currentKnowledgeLevel -
            0.1; // Decrease knowledge level by 0.1 for incorrect answer
    _knowledgeLevel[questionIndex] = updatedKnowledgeLevel.clamp(0.0, 1.0);
  }

  double getKnowledgeLevel(int questionIndex) {
    return _knowledgeLevel[questionIndex] ?? 0.5;
  }
}

class QuizPage extends StatefulWidget {
  @override
  _QuizPageState createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  late ExpertSystem _expertSystem;
  int _currentQuestionIndex = 0;
  bool _answer = false; // default answer

  final List<Question> _questions = [
    Question('1- Flutter is Open-source UI toolkit?', true),
    Question('2- Does flutter support desktop application development?', true),
    Question(
        '3- A sequence of asynchronous events is often referred to as a stream.?',
        true),
    Question(
        '4- Flutters rendering engine is primarily written in which programming language is c#?',
        false),
    Question(
        '5- ListView widget is used for repeating content in Flutter?', true),
    Question('6- Flutter have mainly 2 types of widgets?', true),
    Question(
        '7- safe area component allow us to specify the distance between widgets on the screen?',
        false),
    Question('8- Flutter is developed by Google?', true),
    Question('9- React is used to build flutter app?', false),
    Question(
        '10- Image.asset is used to load images from the flutter projects assets?',
        true),
  ];

  @override
  void initState() {
    super.initState();
    _expertSystem = ExpertSystem(
      questions: _questions,
      currentQuestionIndex: _currentQuestionIndex,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            'Flutter Test',
            selectionColor: Colors.deepPurple[300],
            style: TextStyle(fontSize: 20),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              _questions[_currentQuestionIndex].text,
              style: TextStyle(fontSize: 24),
              textAlign: TextAlign.center,
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
    bool isCorrect = _answer == _questions[_currentQuestionIndex].correct;
    _expertSystem.updateKnowledgeLevel(isCorrect, _currentQuestionIndex);
  }

  void _nextQuestion() {
    Question? nextQuestion = _expertSystem.getNextQuestion();
    if (nextQuestion != null) {
      setState(() {
        _questions[_currentQuestionIndex] = nextQuestion;
        _currentQuestionIndex++;
      });
    } else {
      _showResults();
    }
  }

  void _showResults() {
    double overallKnowledgeLevel =
        _expertSystem._knowledgeLevel.values.reduce((a, b) => a + b);
    String resultMessage = '';

    if (overallKnowledgeLevel < 5) {
      resultMessage = 'Not Qualified';
    } else {
      resultMessage = 'Qualified';
    }

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Results'),
          content: Text(resultMessage),
          actions: [
            Center(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size(30, 40),
                  textStyle: const TextStyle(fontSize: 10),
                  backgroundColor: Colors.deepPurple[300],
                  foregroundColor: Colors.white,
                ),
                onPressed: () {
                  Navigator.pushNamed(context, "/Course");
                },
                child: const Text("Back to courses",
                    style: TextStyle(fontSize: 15)),
              ),
            ),
            const SizedBox(height: 10),
            Center(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size(155, 40),
                  textStyle: const TextStyle(fontSize: 10),
                  backgroundColor: Colors.deepPurple[300],
                  foregroundColor: Colors.white,
                ),
                onPressed: () {
                  Navigator.pushNamed(context, "/Jobadvertisement");
                },
                child: const Text("Continue", style: TextStyle(fontSize: 15)),
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
