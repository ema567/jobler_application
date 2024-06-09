// ignore_for_file: prefer_const_constructors, sort_child_properties_last

import 'package:flutter/material.dart';

void main() {
  runApp(const Hello());
}

class Hello extends StatelessWidget {
  const Hello({super.key});

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
                  "Jobler",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    height: 2,
                    letterSpacing: 1,
                  ),
                ),
                Positioned(
                  child: Center(
                    child: Image.asset("assets/images/hello.png"),
                  ),
                ),
                Text(
                  "Hello!",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 40,
                    fontWeight: FontWeight.w300,
                    height: 2,
                    letterSpacing: 1,
                  ),
                  textAlign: TextAlign.center,
                ),
                Text(
                  "your personallized gateway to success starts here with our Jobler App's hello screen!",
                  style: TextStyle(
                    color: Colors.grey[800],
                    fontSize: 10,
                    fontWeight: FontWeight.normal,
                    wordSpacing: 1,
                  ),
                  maxLines: 1,
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: 22,
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/Login');
                  },
                  child: Text(
                    "Log in",
                    style: TextStyle(
                      color: Colors.deepPurple[300],
                      fontSize: 25,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.white),
                    padding: MaterialStateProperty.all(
                        EdgeInsets.symmetric(horizontal: 79, vertical: 10)),
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25))),
                  ),
                ),
                SizedBox(
                  height: 18,
                ),
                ElevatedButton(
                  onPressed: () {Navigator.pushNamed(context, '/Signup');},
                  child: Text(
                    "Sign up",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all(Colors.deepPurple[300]),
                    padding: MaterialStateProperty.all(
                        EdgeInsets.symmetric(horizontal: 79, vertical: 10)),
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25))),
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
