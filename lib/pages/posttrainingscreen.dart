// ignore_for_file: prefer_const_constructors, avoid_print, library_private_types_in_public_api


import 'package:flutter/material.dart';

void main() {
  runApp(const PostTrainingScreen());
}

class PostTrainingScreen extends StatefulWidget {
  const PostTrainingScreen({super.key});

  @override
  _PostTrainingScreenState createState() => _PostTrainingScreenState();
}

class _PostTrainingScreenState extends State<PostTrainingScreen> {
   final _formKey = GlobalKey<FormState>();
  final _companynameController = TextEditingController();
  final _trainingTitleController = TextEditingController();
  final _trainingHoursController = TextEditingController();
  final _skillsController = TextEditingController();
  final _emailController = TextEditingController();
  final _abouttrainingController = TextEditingController();
 

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.deepPurple[300],
          title: Center(child: Text("Post a new training")),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Form(
              key: _formKey,
              child: Column(
                children: [
                  SizedBox(
                    height: 20,
                  ),

                  TextFormField(
                    controller: _companynameController,
                    decoration: InputDecoration(
                      icon: Icon(
                        Icons.note_alt_outlined,
                      ),
                      labelText: "company name:",
                      labelStyle: TextStyle(
                        color: Colors.black,
                        backgroundColor: Colors.white,
                      ),
                      border: OutlineInputBorder(),
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "Please enter a company name";
                      }
                      return null;
                    },
                  ),

                  SizedBox(
                    height: 20,
                  ),

                  TextFormField(
                    controller: _trainingTitleController,
                    decoration: InputDecoration(
                      icon: Icon(
                        Icons.app_registration,
                      ),
                      labelText: "training title:",
                      labelStyle: TextStyle(
                        color: Colors.black,
                        backgroundColor: Colors.white,
                      ),
                      border: OutlineInputBorder(),
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "Please enter a training title";
                      }
                      return null;
                    },
                  ),
                  SizedBox(height: 20),
                  TextFormField(
                    controller: _trainingHoursController,
                    decoration: InputDecoration(
                      icon: Icon(Icons.alarm),
                      labelText: "training hours:",
                      labelStyle: TextStyle(
                        color: Colors.black,
                        backgroundColor: Colors.white,
                      ),
                      border: OutlineInputBorder(),
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "Please enter a training hours";
                      }
                      return null;
                    },
                  ),
                  SizedBox(height: 20),
                  TextFormField(
                    controller: _skillsController,
                    decoration: InputDecoration(
                      icon: Icon(Icons.add_comment_rounded),
                      labelText: "skills:",
                      labelStyle: TextStyle(
                        color: Colors.black,
                        backgroundColor: Colors.white,
                      ),
                      border: OutlineInputBorder(),
                    ),
                    maxLines: 4,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "Please enter a skills";
                      }
                      return null;
                    },
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    controller: _abouttrainingController,
                    decoration: InputDecoration(
                      icon: Icon(Icons.highlight_rounded),
                      labelText: "about training:",
                      labelStyle: TextStyle(
                        color: Colors.black,
                        backgroundColor: Colors.white,
                      ),
                      border: OutlineInputBorder(),
                    ),
                    maxLines: 4,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "Please enter about training";
                      }
                      return null;
                    },
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  // Text("To apply on this training send your CV to"),
                  TextFormField(
                    controller: _emailController,
                    decoration: InputDecoration(
                      icon: Icon(Icons.email_outlined),
                      labelText: "email:",
                      labelStyle: TextStyle(
                        color: Colors.black,
                        backgroundColor: Colors.white,
                      ),
                      border: OutlineInputBorder(),
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "Please enter a email";
                      }
                      return null;
                    },
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        Navigator.pop(context, {
                          'companyname':_companynameController.text,
                          'title': _trainingTitleController.text,
                          'hours': _trainingHoursController.text,
                          'skills': _skillsController.text,
                          'email': _emailController.text,
                          'abouttraining': _abouttrainingController.text,
                        });

                        print(
                            "Posting new training:${_companynameController.text}   - ${ _trainingTitleController.text} - ${_trainingHoursController.text}  - ${_skillsController.text}  - ${_emailController.text}  - ${_abouttrainingController.text}     ");
                      }
                    },
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(Colors.deepPurple[300]),
                      padding: MaterialStateProperty.all(
                          EdgeInsets.symmetric(horizontal: 50, vertical: 10)),
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(27))),
                    ),
                    child: Text(
                      "Post training",
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
