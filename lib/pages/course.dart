// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

void main() {
  runApp(const Course());
}

class Course extends StatelessWidget {
  const Course({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Stack(
          children: [
            Column(
              children: [
                Text(
                  "Courses",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    height: 2,
                    letterSpacing: 1,
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                SingleChildScrollView(
                  child: Center(
                    child: Column(
                      children: [
                        Image.asset("assets/images/coursepage.png"),
                        Text(
                          "  -Develop your skills by learning with our application platforms, whether online or offline..",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                            fontWeight: FontWeight.w400,                
                           wordSpacing: 1,                        
                          ),
                          maxLines: 3,
                        ),
                        SizedBox(height: 10,),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            minimumSize: const Size(double.infinity, 100),
                            textStyle: const TextStyle(fontSize: 30),
                            backgroundColor: Colors.deepPurple[300],
                            foregroundColor: Colors.white,
                          ),
                          child: const Text(
                            "Online courses",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          onPressed: () {
                            Navigator.pushNamed(context, '/Onlinepage');
                          },
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            minimumSize: const Size(double.infinity, 100),
                            textStyle: const TextStyle(fontSize: 30),
                            backgroundColor: Colors.deepPurple[300],
                            foregroundColor: Colors.white,
                          ),
                          child: const Text(
                            "Offline courses",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          onPressed: () {
                            Navigator.pushNamed(context, '/Offlinepage');
                          },
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
