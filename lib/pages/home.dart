// ignore_for_file: prefer_const_constructors, sort_child_properties_last, dead_code

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const Home());
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text(
            "Jobler",
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
          leading: IconButton(
            icon: const Icon(Icons.person_rounded, color: Colors.black),
            onPressed: () {
              Navigator.pushNamed(context, '/Profile');
            },
          ),
          actions: [
            IconButton(
              icon: const Icon(Icons.message, color: Colors.black),
              onPressed: () {
                Navigator.pushNamed(context, '/Message');
              },
            )
          ],
        ),
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                FirebaseAuth.instance.currentUser!.emailVerified
                    ? Text("welcome")
                    : MaterialButton(
                        textColor: Colors.white,
                        color: Colors.deepPurple[300],
                        minWidth: 10,
                        height: 25,
                        onPressed: () {
                          FirebaseAuth.instance.currentUser!
                              .sendEmailVerification();
                        },
                        child: Text("please verified email"),
                      ),
                Center(
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      minimumSize: const Size(double.infinity, 200),
                      textStyle: const TextStyle(fontSize: 30),
                      backgroundColor: Colors.deepPurple[300],
                      foregroundColor: Colors.white,
                    ),
                    child: const Text("Courses"),
                    onPressed: () {
                      Navigator.pushNamed(context, '/Course');
                    },
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    minimumSize: const Size(double.infinity, 200),
                    textStyle: const TextStyle(fontSize: 30),
                    backgroundColor: Colors.deepPurple[300],
                    foregroundColor: Colors.white,
                  ),
                  child: const Text("Jobs"),
                  onPressed: () {
                    Navigator.pushNamed(context, '/Job');
                  },
                ),
                const SizedBox(
                  height: 10,
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    minimumSize: const Size(double.infinity, 200),
                    textStyle: const TextStyle(fontSize: 30),
                    backgroundColor: Colors.deepPurple[300],
                    foregroundColor: Colors.white,
                  ),
                  child: const Text("Training"),
                  onPressed: () {
                    Navigator.pushNamed(context, '/Trainingadvertisement');
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
