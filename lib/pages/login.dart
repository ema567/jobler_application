// ignore_for_file: prefer_const_constructors, sort_child_properties_last, unnecessary_import, avoid_web_libraries_in_flutter,, avoid_single_cascade_in_expression_statements, use_build_context_synchronously, avoid_print, unused_local_variable, await_only_futures, unused_field, prefer_const_literals_to_create_immutables, avoid_returning_null_for_void, unused_import, empty_statements, unused_label

import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(const Login());
}

class Login extends StatefulWidget {
  const Login({super.key});
  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  // final _formKey = GlobalKey<FormState>();
  TextEditingController password = TextEditingController();
  TextEditingController email = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child:
              // key: _formKey,
              Stack(
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
                      controller: email,
                      decoration: InputDecoration(
                          icon: Icon(
                            Icons.email_outlined,
                            color: Colors.deepPurple[300],
                          ),
                          hintText: "Your Email :",
                          hintStyle: TextStyle(color: Colors.black),
                          border: InputBorder.none),
                      // validator: (value) {
                      //   if (value == null || value.isEmpty) {
                      //     return "Please enter your email";
                      //   }
                      //   return null;
                      // },
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
                      controller: password,
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
                      // validator: (value) {
                      //   if (value == null || value.isEmpty) {
                      //     return "Please enter your email";
                      //   }
                      //   return null;
                      // },
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  ElevatedButton(
                    onPressed: () async {
                      // if (_formKey.currentState!.validate()) {
                      try {
                        final credential = await FirebaseAuth.instance
                            .signInWithEmailAndPassword(
                                email: email.text, password: password.text);
                        Navigator.of(context).pushReplacementNamed("/Home");
                      } on FirebaseAuthException catch (e) {
                        if (e.code == 'user-not-found') {
                          print('No user found for that email.');
                          AwesomeDialog(
                            context: context,
                            dialogType: DialogType.error,
                            animType: AnimType.rightSlide,
                            title: 'Error',
                            desc: 'No user found for that email.',
                            btnCancelOnPress: () {},
                            btnOkOnPress: () {},
                          ).show();
                        } else if (e.code == 'wrong-password') {
                          print('Wrong password provided for that user.');
                          AwesomeDialog(
                            context: context,
                            dialogType: DialogType.error,
                            animType: AnimType.rightSlide,
                            title: 'Error',
                            desc: 'Wrong password provided for that user.',
                            btnCancelOnPress: () {},
                            btnOkOnPress: () {},
                          ).show();
                        }
                      }
                      // } else {
                      //   print("Form is not valid");
                      // }
                      
                    },
                    style: 
                      ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Colors.deepPurple[300]),
                        padding: MaterialStateProperty.all(EdgeInsets.symmetric(
                            horizontal: 106, vertical: 10)),
                        shape: MaterialStateProperty.all(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(27))),
                      ),
                      child: 
                      Text(
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
              // Positioned(
              //   bottom: 0,
              //   right: 0,
              //   child: Image.asset(
              //     "assets/images/login_bottom.png",
              //   width: 111,
              //   ),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
