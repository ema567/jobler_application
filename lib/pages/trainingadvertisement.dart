// ignore_for_file: prefer_const_constructors, use_build_context_synchronously, must_be_immutable, library_private_types_in_public_api, prefer_const_literals_to_create_immutables, unused_import, prefer_final_fields, dead_code, avoid_print, non_constant_identifier_names

import 'dart:math';

import 'package:flutter/material.dart';
import 'package:jobler_application/pages/posttrainingscreen.dart';

void main() {
  runApp(Trainingadvertisement());
}

class Trainingadvertisement extends StatefulWidget {
  const Trainingadvertisement({super.key});
  @override
  _TrainingadvertisementState createState() => _TrainingadvertisementState();
}

class _TrainingadvertisementState extends State<Trainingadvertisement> {
  List<Map<String, dynamic>> _postedTrainings = [];

  void _showPostedTraining(Map<String, dynamic> result) {
    setState(() {
      _postedTrainings.add(result);
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.deepPurple[300],
          title: Text("Trainings"),
          centerTitle: true,
          actions: [
            IconButton(
              icon: const Icon(Icons.search, color: Colors.black),
              onPressed: () async {  final query = await showSearch<String>(
          context: context,
          delegate: TrainingadvertisementSearchDelegate(),
        );
        if (query!= null) {
          print('Search query: $query');
        }         },
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Stack(
            children: [
              Center(
                child: Column(
                  children: [
                    SizedBox(
                      height: 3,
                    ),
                    ElevatedButton(
                      onPressed: () async {
                        final result = await Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => PostTrainingScreen()),
                        );

                        if (result != null) {
                          _showPostedTraining(result);
                        }
                      },
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Colors.white),
                        padding: MaterialStateProperty.all(
                            EdgeInsets.symmetric(horizontal: 15, vertical: 1)),
                        shape: MaterialStateProperty.all(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(27))),
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Icon(Icons.add,
                              size: 15, color: Colors.deepPurple[300]),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            "Post a new training",
                            style: TextStyle(
                              color: Colors.deepPurple[300],
                              fontSize: 15,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 30),
                    _postedTrainings.isNotEmpty
                        ? ListView.builder(
                            shrinkWrap: true,
                            physics: NeverScrollableScrollPhysics(),
                            itemCount: _postedTrainings.length,
                            itemBuilder: (context, index) {
                              return Padding(
                                padding: const EdgeInsets.only(left: 30.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Row(children: [
                                      Icon(Icons.note_alt_outlined),
                                      Text(
                                        _postedTrainings[index]
                                                .containsKey('companyname')
                                            ? "${_postedTrainings[index]['companyname']}"
                                            : "Company name not provided",
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 10,
                                          fontWeight: FontWeight.w500,
                                          height: 1,
                                          letterSpacing: 1,
                                        ),
                                      ),
                                    ]),
                                    SizedBox(
                                      height: 15,
                                    ),
                                    Row(children: [
                                      Icon(Icons.work_rounded),
                                      Text(
                                        "${_postedTrainings[index]['title']}",
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 15,
                                          fontWeight: FontWeight.w900,
                                          height: 1,
                                          letterSpacing: 1,
                                        ),
                                      ),
                                    ]),
                                    SizedBox(
                                      height: 15,
                                    ),
                                    Row(children: [
                                      Icon(Icons.timer),
                                      Text(
                                          "${_postedTrainings[index]['hours']}"),
                                    ]),
                                    SizedBox(
                                      height: 15,
                                    ),
                                    Row(children: [
                                      Icon(Icons.grading_rounded),
                                      Text(
                                          "${_postedTrainings[index]['skills']}"),
                                    ]),
                                    SizedBox(
                                      height: 15,
                                    ),
                                    Row(children: [
                                      Icon(Icons.highlight_outlined),
                                      Text(  
                                     _postedTrainings[index]
                                        .containsKey('abouttraining')
                                            ? "${_postedTrainings[index]['abouttraining']}"
                                            : "about training not provided",
                                        
                                 ), ],),
                                    SizedBox(
                                      height: 15,
                                    ),
                                    Text(
                                      "To apply on this training send your CV to:",
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 15,
                                        fontWeight: FontWeight.w500,
                                        height: 1,
                                        letterSpacing: 1,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 3,
                                    ),
                                    Row(
                                      children: [
                                        Icon(Icons.email_outlined),
                                        Text(
                                            "${_postedTrainings[index]['email']}"),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 20,
                                    ),
                                  ],
                                ),
                              );
                          
                            },
                          )
                        : Text("No training posted"),
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


class TrainingadvertisementSearchDelegate extends SearchDelegate<String> {
  final Trainingadvertisement = [
    "Ui/Ux",
    "Frontend Development",
    "Flutter",
  ];

  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
        color: Colors.black,
        icon: const Icon(Icons.clear),
        onPressed: () {
          query = '';
        },
      ),
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
      color: Colors.black,
      icon: const Icon(Icons.arrow_back),
      onPressed: () {
        close(context, '');
      },
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    final results = Trainingadvertisement
        .where((Trainingadvertisement) => Trainingadvertisement.toLowerCase().contains(query.toLowerCase()))
        .toList();
    return Container(
      color: Colors.white,
      child: ListView.builder(
        itemCount: results.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(results[index]),
            onTap: () {
              // Navigate to the selected course
              if (results[index] == "Ui/Ux") {
                // Navigator.pushNamed(context, '/Trainingadvertisement');
              } else if (results[index] == "Frontend Development") {
                // Navigator.pushNamed(context, '/Trainingadvertisement');
              } else if (results[index] == "Flutter") {
                // Navigator.pushNamed(context, '/Trainingadvertisement');
              }
            },
          );
        },
      ),
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    final suggestions = Trainingadvertisement
        .where((Trainingadvertisement) => Trainingadvertisement.toLowerCase().contains(query.toLowerCase()))
        .toList();
    return Container(
      color: Colors.white,
      child: ListView.builder(
        itemCount: suggestions.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(suggestions[index]),
            onTap: () {
              // Navigate to the selected course
              if (suggestions[index] == "Ui/Ux") {
                // Navigator.pushNamed(context, '/Trainingadvertisement');
              } else if (suggestions[index] == "Frontend Development") {
                // Navigator.pushNamed(context, '/Trainingadvertisement');
              } else if (suggestions[index] == "Flutter") {
                // Navigator.pushNamed(context, '/Trainingadvertisement');
              }
            },
          );
        },
      ),
    );
  }
}


 