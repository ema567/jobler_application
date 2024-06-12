// ignore_for_file: prefer_const_constructors, avoid_print, unused_local_variable, use_build_context_synchronously, non_constant_identifier_names, prefer_final_fields, unused_field, unused_element, library_private_types_in_public_api, use_key_in_widget_constructors

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(Signup());
}

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  _SignupState createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  TextEditingController fullname = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController email = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Stack(
            children: [
              Center(
                child: Column(
                  children: [
                    SizedBox(
                      width: double.infinity,
                    ),
                    Text(
                      "Sign up",
                      style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                    Image.asset("assets/images/Signup.png"),
                    Text(
                      "Enter your data!",
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
                      padding: EdgeInsets.symmetric(horizontal: 15),
                      child: TextField(
                        controller: fullname,
                        decoration: InputDecoration(
                            icon: Icon(
                              Icons.app_registration,
                              color: Colors.deepPurple[300],
                            ),
                            hintText: "Full Name:",
                            hintStyle: TextStyle(color: Colors.black),
                            border: InputBorder.none),
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
                      padding: EdgeInsets.symmetric(horizontal: 15),
                      child: TextField(
                        controller: password,
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
                            hintText: "Password:",
                            hintStyle: TextStyle(color: Colors.black),
                            border: InputBorder.none),
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
                      padding: EdgeInsets.symmetric(horizontal: 15),
                      child: TextField(
                        controller: email,
                        decoration: InputDecoration(
                            icon: Icon(
                              Icons.email_outlined,
                              color: Colors.deepPurple[300],
                              size: 19,
                            ),
                            hintText: "Your Email:",
                            hintStyle: TextStyle(color: Colors.black),
                            border: InputBorder.none),
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
                      padding: EdgeInsets.symmetric(horizontal: 15),
                      child: TextField(
                        decoration: InputDecoration(
                            icon: Icon(
                              Icons.phone,
                              color: Colors.deepPurple[300],
                              size: 19,
                            ),
                            hintText: "Phone Number:",
                            hintStyle: TextStyle(color: Colors.black),
                            border: InputBorder.none),
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
                      padding: EdgeInsets.symmetric(horizontal: 15),
                      child: TextField(
                        decoration: InputDecoration(
                            icon: Icon(
                              Icons.location_city,
                              color: Colors.deepPurple[300],
                              size: 19,
                            ),
                            hintText: "Residential Area /Governorate/ Country:",
                            hintStyle: TextStyle(color: Colors.black),
                            border: InputBorder.none),
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
                      padding: EdgeInsets.symmetric(horizontal: 15),
                      child: TextField(
                        decoration: InputDecoration(
                            icon: Icon(
                              Icons.date_range,
                              color: Colors.deepPurple[300],
                              size: 19,
                            ),
                            hintText: "Birthdate:",
                            hintStyle: TextStyle(color: Colors.black),
                            border: InputBorder.none),
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
                      padding: EdgeInsets.symmetric(horizontal: 15),
                      child: TextField(
                        decoration: InputDecoration(
                            icon: Icon(
                              Icons.wc,
                              color: Colors.deepPurple[300],
                              size: 19,
                            ),
                            hintText: "Gender:",
                            hintStyle: TextStyle(color: Colors.black),
                            border: InputBorder.none),
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
                      padding: EdgeInsets.symmetric(horizontal: 15),
                      child: TextField(
                        decoration: InputDecoration(
                            icon: Icon(
                              Icons.school,
                              color: Colors.deepPurple[300],
                              size: 19,
                            ),
                            hintText: "College/University:",
                            hintStyle: TextStyle(color: Colors.black),
                            border: InputBorder.none),
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
                      padding: EdgeInsets.symmetric(horizontal: 15),
                      child: TextField(
                        decoration: InputDecoration(
                            icon: Icon(
                              Icons.onetwothree_outlined,
                              color: Colors.deepPurple[300],
                              size: 19,
                            ),
                            hintText: "College Level:",
                            hintStyle: TextStyle(color: Colors.black),
                            border: InputBorder.none),
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
                      padding: EdgeInsets.symmetric(horizontal: 15),
                      child: TextField(
                        decoration: InputDecoration(
                            icon: Icon(
                              Icons.playlist_add,
                              color: Colors.deepPurple[300],
                              size: 19,
                            ),
                            hintText: "Skills:",
                            hintStyle: TextStyle(color: Colors.black),
                            border: InputBorder.none),
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
                      padding: EdgeInsets.symmetric(horizontal: 15),
                      child: TextField(
                        decoration: InputDecoration(
                            icon: Icon(
                              Icons.cached_outlined,
                              color: Colors.deepPurple[300],
                              size: 19,
                            ),
                            hintText: "Courses:",
                            hintStyle: TextStyle(color: Colors.black),
                            border: InputBorder.none),
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
                      padding: EdgeInsets.symmetric(horizontal: 15),
                      child: TextField(
                        decoration: InputDecoration(
                            icon: Icon(
                              Icons.work,
                              color: Colors.deepPurple[300],
                              size: 19,
                            ),
                            hintText: "Work Experience:",
                            hintStyle: TextStyle(color: Colors.black),
                            border: InputBorder.none),
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    ElevatedButton(
                      onPressed: () async {
                        
                        try {
                          final credential = await FirebaseAuth.instance
                              .createUserWithEmailAndPassword(
                             email: email.text,
                             password: password.text,
                          );

                        } on FirebaseAuthException catch (e) {
                          if (e.code == 'weak-password') {
                            print('The password provided is too weak.');
                          } else if (e.code == 'email-already-in-use') {
                            print('The account already exists for that email.');
                          }
                        } catch (e) {
                          print(e);
                        }
                        Navigator.of(context).pushReplacementNamed("/Cv");
                      },
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Colors.deepPurple[300]),
                        padding: MaterialStateProperty.all(
                            EdgeInsets.symmetric(horizontal: 89, vertical: 10)),
                        shape: MaterialStateProperty.all(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(27))),
                      ),
                      child: Text(
                        "Sign up",
                        style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Already have an accout? "),
                        GestureDetector(
                          onTap: () {
                            Navigator.pushNamed(context, "/Login");
                          },
                          child: Text(
                            " Log in",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}