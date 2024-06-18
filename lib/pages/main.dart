// ignore_for_file: prefer_const_constructors, override_on_non_overriding_member, avoid_print,, non_constant_identifier_names, unused_import, duplicate_import

import 'dart:io';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:jobler_application/pages/course.dart';
import 'package:jobler_application/pages/cv.dart';
import 'package:jobler_application/pages/first.dart';
import 'package:jobler_application/pages/flutter.dart';
import 'package:jobler_application/pages/flutterquestion.dart';
import 'package:jobler_application/pages/frontendcourse.dart';
import 'package:jobler_application/pages/frontendquestion.dart';
import 'package:jobler_application/pages/hello.dart';
import 'package:jobler_application/pages/home.dart';
import 'package:jobler_application/pages/job.dart';
import 'package:jobler_application/pages/jobadvertisement.dart';
import 'package:jobler_application/pages/login.dart';
import 'package:jobler_application/pages/message.dart';
import 'package:jobler_application/pages/mobileapplication.dart';
import 'package:jobler_application/pages/offlinepage.dart';
import 'package:jobler_application/pages/onlinepage.dart';
import 'package:jobler_application/pages/postjobscreen.dart';
import 'package:jobler_application/pages/posttrainingscreen.dart';
import 'package:jobler_application/pages/profile.dart';
import 'package:jobler_application/pages/programming.dart';
import 'package:jobler_application/pages/signup.dart';
import 'package:jobler_application/pages/trainingadvertisement.dart';
import 'package:jobler_application/pages/uiquestion.dart';
import 'package:jobler_application/pages/uiuxcourse.dart';
import 'package:jobler_application/pages/webdevelopment.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Platform.isAndroid
      ? await Firebase.initializeApp(
          options: FirebaseOptions(
              apiKey: 'AIzaSyBiCLXcs05m1965pmZnv2acGqeV47NUMc4',
              appId: '1:627087928722:android:63417a7220f10fc71f254b',
              messagingSenderId: '627087928722',
              projectId: 'flutterjobler'))
      : await Firebase.initializeApp();
  runApp(const Jobler());
}

class Jobler extends StatefulWidget {
  const Jobler({super.key});

  @override
  State<Jobler> createState() => _Joblerstate();
}

class _Joblerstate extends State<Jobler> {
  @override
  void inistate() {
    FirebaseAuth.instance.authStateChanges().listen((User? User) {
      if (User == null) {
        print('=================================user is currently signed out!');
      } else {
        print('=================================user is currently signed in!');
      }
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        // home:FirebaseAuth.instance.currentUser == null ? Login() : Home(),
        initialRoute: "/",
        routes: {
          "/": (context) => const First(),
          "/Hello": (context) => const Hello(),
          "/Signup": (context) => const Signup(),
          "/Login": (context) => const Login(),
          "/Cv": (context) => const Cv(),
          "/Home": (context) => const Home(),
          "/Profile": (context) => const Profile(),
          "/Message": (context) => const Message(),
          "/Course": (context) => const Course(),
          "/Onlinepage": (context) => const Onlinepage(),
          "/UiUxcourse": (context) => const UiUxCourse(),
          "/Frontendcourse": (context) => const FrontEndCourse(),
          "/Fluttercourse": (context) => const FlutterCourse(),
          "/Offlinepage": (context) => const Offlinepage(),
          "/Programming": (context) => const Programming(),
          "/Mobileapplication": (context) => const Mobileapplication(),
          "/Webdevelopment": (context) => const Webdevelopment(),
          "/Job": (context) => const Job(),
          "/Uiquestion": (context) => const Uiquestion(),
          "/Frontendquestion": (context) => const Frontendquestion(),
          "/Flutterquestion": (context) => const Flutterquestion(),
          "/Jobadvertisement": (context) => const Jobadvertisement(),
          "/PostJobScreen": (context) => const PostJobScreen(),
          "/Trainingadvertisement": (context) => const Trainingadvertisement(),
          "/PostTrainingScreen": (context) => const PostTrainingScreen(),
        });
  }
}
