// ignore_for_file: prefer_const_constructors, sort_child_properties_last, unnecessary_import, avoid_web_libraries_in_flutter, unused_import

import 'package:flutter/material.dart';

void main() {
  runApp(const Login());
}

class Login extends StatelessWidget {
  const Login({super.key});
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Stack(
          children: [
            Column(
              children: [
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Login",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    height: 1,
                    letterSpacing: 1,
                  ),
                ),
                Image.asset("assets/images/login.png"),
                Text(
                  "login to your account",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    height: 1,
                    wordSpacing: 1,
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.deepPurple[50],
                    borderRadius: BorderRadius.circular(66),
                  ),
                  width: 266,
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  child: TextField(
                    decoration: InputDecoration(
                        icon: Icon(
                          Icons.email_outlined,
                          color: Colors.deepPurple[300],
                        ),
                        hintText: "Your Email :",
                        hintStyle: TextStyle(color: Colors.black),
                        border: InputBorder.none),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.deepPurple[50],
                    borderRadius: BorderRadius.circular(66),
                  ),
                  width: 266,
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  child: TextField(
                    obscureText: false,
                    decoration: InputDecoration(
                        suffix: Icon(
                          Icons.visibility,
                          color: Colors.deepPurple[300],
                        ),
                        icon: Icon(
                          Icons.lock,
                          color: Colors.deepPurple[300],
                          size: 19,
                        ),
                        hintText: "Password :",
                        hintStyle: TextStyle(color: Colors.black),
                        border: InputBorder.none),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pushReplacementNamed("/Home");
                  },
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all(Colors.deepPurple[300]),
                    padding: MaterialStateProperty.all(
                        EdgeInsets.symmetric(horizontal: 106, vertical: 10)),
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(27))),
                  ),
                  child: Text(
                    "Login",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                    ),
                  ),
                ),
                SizedBox(
                  height: 35,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Don't have an accout? "),
                    GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, "Signup");
                      },
                      child: Text(
                        "Sign up",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                )
              ],
            ),
            Positioned(
              left: 0,
              child: Image.asset(
                "assets/images/main_top.png",
                width: 111,
              ),
            ),
            Positioned(
              bottom: 0,
              right: 0,
              child: Image.asset(
                "assets/images/login_bottom.png",
                width: 111,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
