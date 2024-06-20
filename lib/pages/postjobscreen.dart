// ignore_for_file: prefer_const_constructors, avoid_print, library_private_types_in_public_api

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const PostJobScreen());
}

class PostJobScreen extends StatefulWidget {
  const PostJobScreen({super.key});

  @override
  _PostJobScreenState createState() => _PostJobScreenState();
}

class _PostJobScreenState extends State<PostJobScreen> {
  final _formKey = GlobalKey<FormState>();
  final _companynameController = TextEditingController();
  final _jobTitleController = TextEditingController();
  final _jobHoursController = TextEditingController();
  final _skillsController = TextEditingController();
  final _emailController = TextEditingController();
  final _aboutjobController = TextEditingController();

  CollectionReference users = FirebaseFirestore.instance.collection('users');
  Future<void> addUser() {
    return users
        .add({
          'companyname': _companynameController.text,
          'title': _jobTitleController.text,
          'hours': _jobHoursController.text,
          'skills': _skillsController.text,
          'email': _emailController.text,
          'aboutjob': _aboutjobController.text,
        })
        .then((value) => print("User Added"))
        .catchError((error) => print("Failed to add user: $error"));
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.deepPurple[300],
          title: Center(child: Text("Post a new job")),
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
                  Column(
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
                        controller: _jobTitleController,
                        decoration: InputDecoration(
                          icon: Icon(
                            Icons.app_registration,
                          ),
                          labelText: "job title:",
                          labelStyle: TextStyle(
                            color: Colors.black,
                            backgroundColor: Colors.white,
                          ),
                          border: OutlineInputBorder(),
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return "Please enter a job title";
                          }
                          return null;
                        },
                      ),
                      SizedBox(height: 20),
                      TextFormField(
                        controller: _jobHoursController,
                        decoration: InputDecoration(
                          icon: Icon(Icons.alarm),
                          labelText: "job hours:",
                          labelStyle: TextStyle(
                            color: Colors.black,
                            backgroundColor: Colors.white,
                          ),
                          border: OutlineInputBorder(),
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return "Please enter a job hours";
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
                        controller: _aboutjobController,
                        decoration: InputDecoration(
                          icon: Icon(Icons.highlight_rounded),
                          labelText: "about job:",
                          labelStyle: TextStyle(
                            color: Colors.black,
                            backgroundColor: Colors.white,
                          ),
                          border: OutlineInputBorder(),
                        ),
                        maxLines: 4,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return "Please enter about job";
                          }
                          return null;
                        },
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      // Text("To apply on this job send your CV to"),
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
                         addUser();
                          if (_formKey.currentState!.validate()) 
                         
                          {
                            Navigator.pop(context, {
                              'companyname': _companynameController.text,
                              'title': _jobTitleController.text,
                              'hours': _jobHoursController.text,
                              'skills': _skillsController.text,
                              'email': _emailController.text,
                              'aboutjob': _aboutjobController.text,
                            });

                            print(
                                "Posting new job:${_companynameController.text}    - ${_jobTitleController.text} - ${_jobHoursController.text}  - ${_skillsController.text}  - ${_emailController.text}  - ${_aboutjobController.text}     ");
                          }
                        },
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Colors.deepPurple[300]),
                          padding: MaterialStateProperty.all(
                              EdgeInsets.symmetric(
                                  horizontal: 50, vertical: 10)),
                          shape: MaterialStateProperty.all(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(27))),
                        ),
                        child: Text(
                          "Post job",
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                    ],
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
