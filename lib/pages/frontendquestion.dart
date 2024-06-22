// ignore_for_file: prefer_const_constructors, prefer_final_fields, library_private_types_in_public_api, use_key_in_widget_constructors

import 'package:flutter/material.dart';

void main() {
  runApp(const Frontendquestion());
}

class Frontendquestion extends StatelessWidget {
  const Frontendquestion({super.key});
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


  ExpertSystem(
      {required List<Question> questions, required int currentQuestionIndex})
      : _questions = questions,
        _currentQuestionIndex = currentQuestionIndex;


  void setQuestions(List<Question> questions) {
    _questions = questions;
  }


  Question? getNextQuestion() {
    if (_currentQuestionIndex < _questions.length - 1) {
      _currentQuestionIndex++;
      return _questions[_currentQuestionIndex];
    }
    return null;
  }


  void updateKnowledgeLevel(bool correctAnswer) {
    // Implement your expert system logic here
  }
}


class QuizPage extends StatefulWidget {
  @override
  _QuizPageState createState() => _QuizPageState();
}


class _QuizPageState extends State<QuizPage> {
  List<Question> _questions = [
    Question('1- HTML stands for Hyper Text Markup Language.', true),
    Question('2- Semantic HTML element are Header,Main,Section,Article,Aside,Footer,etc.. ',true),
    Question('3- The empty elements in HTML are the elements that dont require and closing tag followed by the opening tag ', true),
    Question('4- The <iframe> tag is used to embed the external documents or the web pages inside the current document by specifying its link inside it.', true),
    Question('5- The <meta> HTML tag can be used to define metadata about the HTML page that cant be represented by other HTML elements.', true),
    Question('6- A CSS rule consists of a selector and a declaration block.', true),
    Question('7- Bootstrap is incredibly flexible,and makes creating a customized,responsive layout a simple task.', true),
    Question('8- Is <keygen> a valid HTML5 tag.', true),
    Question('9- If you have a page of search results and want to highlight the search term, would you use <em> tag.', false),
    Question('10- There is 4 ways to apply colors in CSS.', false),
  ];


  int _currentQuestionIndex = 0;
  bool _answer = false; // default answer
  int _score = 0;


  @override
  void initState() {
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            'FrontEnd Test',
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
                  onPressed: () {   Navigator.pushNamed(context, "/Course");},
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
                  onPressed: ()   {Navigator.pushNamed(context, "/Jobadvertisement");},
                  child: const Text(
                    "Continue",
                    style: TextStyle(fontSize: 15),
                  )),
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


