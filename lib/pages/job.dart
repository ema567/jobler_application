// ignore_for_file: prefer_const_constructors, sort_child_properties_last

import 'package:flutter/material.dart';

void main() {
  runApp(const Job());
}

class Job extends StatelessWidget {
  const Job({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Center(
            child: Text(
              "Jobs",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 25,
                  fontWeight: FontWeight.bold),
            ),
          ),
          backgroundColor: Colors.white,
          leading: IconButton(
            icon: const Icon(Icons.skip_previous_outlined, color: Colors.black),
            onPressed: () {
              Navigator.pushNamed(context, '/Jobadvertisement');
            },
          ),
        ),
        body: Stack(
          children: [
            Center(
              child: Column(
                children: [
                  SizedBox(
                    height: 120,
                  ),
                  Center(
                    child: Text(
                      "choose the domain that you prefer working in for determining the experience level.!",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                        wordSpacing: 1,
                      ),
                      maxLines: 2,
                    ),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      minimumSize: const Size(350, 100),
                      textStyle: const TextStyle(fontSize: 30),
                      backgroundColor: Colors.deepPurple[300],
                      foregroundColor: Colors.white,
                    ),
                    child: Text("Ui/Ux"),
                    onPressed: () {
                      Navigator.pushNamed(context, '/Uiquestion');
                    },
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      minimumSize: const Size(350, 100),
                      textStyle: const TextStyle(fontSize: 30),
                      backgroundColor: Colors.deepPurple[300],
                      foregroundColor: Colors.white,
                    ),
                    child: const Text(
                      "Frontend Development",
                      style: TextStyle(fontSize: 20),
                    ),
                    onPressed: () {
                      Navigator.pushNamed(context, '/Frontendquestion');
                    },
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      minimumSize: const Size(350, 100),
                      textStyle: const TextStyle(fontSize: 30),
                      backgroundColor: Colors.deepPurple[300],
                      foregroundColor: Colors.white,
                    ),
                    child: const Text("Flutter"),
                    onPressed: () {
                      Navigator.pushNamed(context, '/Flutterquestion');
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
