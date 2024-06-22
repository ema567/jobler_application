// ignore_for_file: prefer_const_constructors, unused_local_variable, use_build_context_synchronously, avoid_print, unnecessary_import, deprecated_member_use

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
  final _formKey = GlobalKey<FormState>();
  final TextEditingController password = TextEditingController();
  final TextEditingController email = TextEditingController();
  bool isloading = false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: isloading
            ? Center(
                child: CircularProgressIndicator(),
              )
            : SingleChildScrollView(
                child: Form(
                  key: _formKey,
                  child: Stack(children: [
                    Column(children: [
                      SizedBox(height: 10),
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
                      SizedBox(height: 15),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.deepPurple[50],
                          borderRadius: BorderRadius.circular(66),
                        ),
                        width: 266,
                        padding: EdgeInsets.symmetric(horizontal: 16),
                        child: TextFormField(
                          controller: email,
                          decoration: InputDecoration(
                            icon: Icon(
                              Icons.email_outlined,
                              color: Colors.deepPurple[300],
                            ),
                            hintText: "Your Email :",
                            hintStyle: TextStyle(color: Colors.black),
                            border: InputBorder.none,
                          ),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return "Please enter your email";
                            }
                            return null;
                          },
                        ),
                      ),
                      SizedBox(height: 10),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.deepPurple[50],
                          borderRadius: BorderRadius.circular(66),
                        ),
                        width: 266,
                        padding: EdgeInsets.symmetric(horizontal: 16),
                        child: TextFormField(
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
                            border: InputBorder.none,
                          ),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return "Please enter your password";
                            }
                            return null;
                          },
                        ),
                      ),
                      SizedBox(height: 20),
                      ElevatedButton(
                        onPressed: () async {
                          if (_formKey.currentState!.validate()) {
                            try {
                              isloading = true;
                              setState(() {});

                              final credential = await FirebaseAuth.instance
                                  .signInWithEmailAndPassword(
                                      email: email.text,
                                      password: password.text);
                              isloading = false;
                              setState(() {});

                              if (FirebaseAuth
                                  .instance.currentUser!.emailVerified) {
                                Navigator.of(context)
                                    .pushReplacementNamed("/Home");
                              } else {
                                FirebaseAuth.instance.currentUser!
                                    .sendEmailVerification();
                                AwesomeDialog(
                                  context: context,
                                  dialogType: DialogType.error,
                                  animType: AnimType.rightSlide,
                                  title: 'Error',
                                  desc:
                                      'Please go to your email and click on the email verification link to activate your account',
                                  btnOkOnPress: () {},
                                ).show();
                              }
                            } on FirebaseAuthException catch (e) {
                              String errorMessage = '';

                              if (e.code == 'user-not-found') {
                                errorMessage = 'No user found for that email.';

                                AwesomeDialog(
                                  context: context,
                                  dialogType: DialogType.error,
                                  animType: AnimType.rightSlide,
                                  title: 'Error',
                                  desc: 'the email not correct',
                                  btnOkOnPress: () {},
                                ).show();
                              } else if (e.code == 'wrong-password') {
                                errorMessage =
                                    'Wrong password provided for that user.';
                              }
                              {
                                AwesomeDialog(
                                  context: context,
                                  dialogType: DialogType.error,
                                  animType: AnimType.rightSlide,
                                  title: 'Error',
                                  desc: 'the password not correct',
                                  btnOkOnPress: () {},
                                ).show();
                              }
                            }
                          } else {
                            print("Form is not valid");
                          }
                        },
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Colors.deepPurple[300]),
                          padding: MaterialStateProperty.all(
                              EdgeInsets.symmetric(
                                  horizontal: 106, vertical: 10)),
                          shape: MaterialStateProperty.all(
                              RoundedRectangleBorder(
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
                      SizedBox(height: 5),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          InkWell(
                            onTap: () async {
                              if (email.text == "") {
                                AwesomeDialog(
                                  context: context,
                                  dialogType: DialogType.error,
                                  animType: AnimType.rightSlide,
                                  title: 'Error',
                                  desc:
                                      'Please write your email and then click on forgot password',
                                  btnOkOnPress: () {},
                                ).show();
                                return;
                              }
                              try {
                                await FirebaseAuth.instance
                                    .sendPasswordResetEmail(email: email.text);
                                AwesomeDialog(
                                  context: context,
                                  dialogType: DialogType.success,
                                  animType: AnimType.rightSlide,
                                  title: 'success',
                                  desc:
                                      'A link to reset your password has been sent to your email. Please go to your email and click on the link.',
                                  btnOkOnPress: () {},
                                ).show();
                              } catch (e) {
                                AwesomeDialog(
                                  context: context,
                                  dialogType: DialogType.error,
                                  animType: AnimType.rightSlide,
                                  title: 'Error',
                                  desc:
                                      'Please make sure that the email you entered is correct and try again',
                                  btnOkOnPress: () {},
                                ).show();
                              }
                            },
                            child: Text(
                              "Forgot Password?  ",
                              style: TextStyle(
                                color: Colors.deepPurple[300],
                                fontSize: 14,
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 15,
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
                          ]),
                    ]),
                    Positioned(
                      left: 0,
                      child: Image.asset(
                        "assets/images/main_top.png",
                        width: 111,
                      ),
                    ),
                  ]),
                ),
              ),
      ),
    );
  }
}
