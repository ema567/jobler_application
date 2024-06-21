// // ignore_for_file: prefer_const_constructors, use_build_context_synchronously, must_be_immutable, library_private_types_in_public_api, prefer_const_literals_to_create_immutables, unused_import, prefer_final_fields, avoid_web_libraries_in_flutter, unnecessary_null_comparison, dead_code, avoid_print, avoid_types_as_parameter_names, non_constant_identifier_names

// import 'package:awesome_dialog/awesome_dialog.dart';
// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:flutter/material.dart';
// import 'package:jobler_application/pages/postjobscreen.dart';

// void main() {
//   runApp(Jobadvertisement());
// }

// class Jobadvertisement extends StatefulWidget {
//   const Jobadvertisement({super.key});
//   @override
//   _JobadvertisementState createState() => _JobadvertisementState();
// }

// class _JobadvertisementState extends State<Jobadvertisement> {

//   List<Map<String, dynamic>> _postedJobs = [];
//  @override
//   void initState() {
//     super.initState();
//     _getPostedJobs();
//   }

//   _getPostedJobs() async {
//     final firestore = FirebaseFirestore.instance;
//     final jobsCollection = firestore.collection('jobs');
//     final querySnapshot = await jobsCollection.get();
//     setState(() {
//       _postedJobs = querySnapshot.docs.map((doc) => doc.data()).toList();
//     });
//   }

//   void _showPostedJob(Map<String, dynamic> result) {
//     setState(() {
//       _postedJobs.add(result);
//       _saveJobToFirestore(result);
//     });
//   }

//   _saveJobToFirestore(Map<String, dynamic> job) async {
//     final firestore = FirebaseFirestore.instance;
//     final jobsCollection = firestore.collection('jobs');
//     await jobsCollection.add(job);
//   }

//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Scaffold(
//         backgroundColor: Colors.white,
//         appBar: AppBar(
//           backgroundColor: Colors.deepPurple[300],
//           title: Text("Jobs"),
//           centerTitle: true,
//           actions: [
//             IconButton(
//               icon: const Icon(Icons.search, color: Colors.black),
//               onPressed: () async {
//                 final query = await showSearch<String>(
//                   context: context,
//                   delegate: JobadvertisementSearchDelegate(),
//                 );
//                 if (query != null) {
//                   print('Search query: $query');
//                 }
//               },
//             ),
//           ],
//         ),
//         body: SingleChildScrollView(
//           child: Stack(
//             children: [
//               Center(
//                 child: Column(
//                   children: [
//                     SizedBox(
//                       height: 3,
//                     ),
//                     ElevatedButton(
//                       onPressed: () async {
//                         final result = await Navigator.push(
//                           context,
//                           MaterialPageRoute(
//                               builder: (context) => PostJobScreen()),
//                         );

//                         if (result != null) {
//                           _showPostedJob(result);
//                         }
//                       },
//                       style: ButtonStyle(
//                         backgroundColor:
//                             MaterialStateProperty.all(Colors.white),
//                         padding: MaterialStateProperty.all(
//                             EdgeInsets.symmetric(horizontal: 15, vertical: 1)),
//                         shape: MaterialStateProperty.all(RoundedRectangleBorder(
//                             borderRadius: BorderRadius.circular(27))),
//                       ),
//                       child: Row(
//                         mainAxisSize: MainAxisSize.min,
//                         children: [
//                           Icon(Icons.add,
//                               size: 15, color: Colors.deepPurple[300]),
//                           SizedBox(
//                             width: 5,
//                           ),
//                           Text(
//                             "Post a new job",
//                             style: TextStyle(
//                               color: Colors.deepPurple[300],
//                               fontSize: 15,
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                     SizedBox(height: 30),
//                     _postedJobs.isNotEmpty
//                         ? ListView.builder(
//                             shrinkWrap: true,
//                             physics: NeverScrollableScrollPhysics(),
//                             itemCount: _postedJobs.length,
//                             itemBuilder: (context, index) {
//                               return Padding(
//                                   padding: const EdgeInsets.only(left: 30.0),
//                                   child: Column(
//                                       crossAxisAlignment:
//                                           CrossAxisAlignment.start,
//                                       children: [
//                                         SizedBox(
//                                           height: 10,
//                                         ),
//                                         Row(children: [
//                                           Icon(Icons.note_alt_outlined),
//                                           Text(
//                                             _postedJobs[index]
//                                                     .containsKey('companyname')
//                                                 ? "${_postedJobs[index]['companyname']}"
//                                                 : "Company name not provided",
//                                             style: TextStyle(
//                                               color: Colors.black,
//                                               fontSize: 10,
//                                               fontWeight: FontWeight.w500,
//                                               height: 1,
//                                               letterSpacing: 1,
//                                             ),
//                                           ),
//                                         ]),
//                                         SizedBox(
//                                           height: 15,
//                                         ),
//                                         Row(children: [
//                                           Icon(Icons.work_rounded),
//                                           Text(
//                                             "${_postedJobs[index]['title']}",
//                                             style: TextStyle(
//                                               color: Colors.black,
//                                               fontSize: 15,
//                                               fontWeight: FontWeight.w900,
//                                               height: 1,
//                                               letterSpacing: 1,
//                                             ),
//                                           ),
//                                         ]),
//                                         SizedBox(
//                                           height: 15,
//                                         ),
//                                         Row(children: [
//                                           Icon(Icons.timer),
//                                           Text(
//                                               "${_postedJobs[index]['hours']}"),
//                                         ]),
//                                         SizedBox(
//                                           height: 15,
//                                         ),
//                                         Row(children: [
//                                           Icon(Icons.grading_rounded),
//                                           Text(
//                                               "${_postedJobs[index]['skills']}"),
//                                         ]),
//                                         SizedBox(
//                                           height: 15,
//                                         ),
//                                         Row(children: [
//                                           Icon(Icons.highlight_outlined),
//                                           Text(
//                                             _postedJobs[index]
//                                                     .containsKey('aboutjob')
//                                                 ? "${_postedJobs[index]['aboutjob']}"
//                                                 : "about job not provided",
//                                           ),
//                                         ]),
//                                         SizedBox(
//                                           height: 15,
//                                         ),
//                                         Text(
//                                           "To apply on this job send your CV to:",
//                                           style: TextStyle(
//                                             color: Colors.black,
//                                             fontSize: 15,
//                                             fontWeight: FontWeight.w500,
//                                             height: 1,
//                                             letterSpacing: 1,
//                                           ),
//                                         ),
//                                         SizedBox(
//                                           height: 3,
//                                         ),
//                                         Row(
//                                           children: [
//                                             Icon(Icons.email_outlined),
//                                             Text(
//                                                 "${_postedJobs[index]['email']}"),
//                                           ],
//                                         ),
//                                         SizedBox(
//                                           height: 20,
//                                         ),
//                                       ]));
//                             })
//                         : Text("No job posted"),
//                   ],
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

// class JobadvertisementSearchDelegate extends SearchDelegate<String> {
//   final Jobadvertisement = [
//     "Ui/Ux",
//     "Frontend Development",
//     "Flutter",
//   ];

//   @override
//   List<Widget> buildActions(BuildContext context) {
//     return [
//       IconButton(
//         color: Colors.black,
//         icon: const Icon(Icons.clear),
//         onPressed: () {
//           query = '';
//         },
//       ),
//     ];
//   }

//   @override
//   Widget buildLeading(BuildContext context) {
//     return IconButton(
//       color: Colors.black,
//       icon: const Icon(Icons.arrow_back),
//       onPressed: () {
//         close(context, '');
//       },
//     );
//   }

//   @override
//   Widget buildResults(BuildContext context) {
//     final results = Jobadvertisement.where((Jobadvertisement) =>
//         Jobadvertisement.toLowerCase().contains(query.toLowerCase())).toList();
//     return Container(
//       color: Colors.white,
//       child: ListView.builder(
//         itemCount: results.length,
//         itemBuilder: (context, index) {
//           return ListTile(
//             title: Text(results[index]),
//             onTap: () {
//               // Navigate to the selected course
//               if (results[index] == "Ui/Ux") {
//                 // Navigator.pushNamed(context, '/Jobadvertisement');
//               } else if (results[index] == "Frontend Development") {
//                 // Navigator.pushNamed(context, '/Jobadvertisement');
//               } else if (results[index] == "Flutter") {
//                 // Navigator.pushNamed(context, '/Jobadvertisement');
//               }
//             },
//           );
//         },
//       ),
//     );
//   }

//   @override
//   Widget buildSuggestions(BuildContext context) {
//     final suggestions = Jobadvertisement.where((Jobadvertisement) =>
//         Jobadvertisement.toLowerCase().contains(query.toLowerCase())).toList();
//     return Container(
//       color: Colors.white,
//       child: ListView.builder(
//         itemCount: suggestions.length,
//         itemBuilder: (context, index) {
//           return ListTile(
//             title: Text(suggestions[index]),
//             onTap: () {
//               // Navigate to the selected course
//               if (suggestions[index] == "Ui/Ux") {
//                 // Navigator.pushNamed(context, '/Jobadvertisement');
//               } else if (suggestions[index] == "Frontend Development") {
//                 // Navigator.pushNamed(context, '/Jobadvertisement');
//               } else if (suggestions[index] == "Flutter") {
//                 // Navigator.pushNamed(context, '/Jobadvertisement');
//               }
//             },
//           );
//         },
//       ),
//     );
//   }
// }
// ignore_for_file: prefer_const_constructors, use_build_context_synchronously, must_be_immutable, library_private_types_in_public_api, prefer_const_literals_to_create_immutables, unused_import, prefer_final_fields, avoid_web_libraries_in_flutter, unnecessary_null_comparison, dead_code, avoid_print, avoid_types_as_parameter_names, non_constant_identifier_names, deprecated_member_use

import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:jobler_application/pages/postjobscreen.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(Jobadvertisement());
}

class Jobadvertisement extends StatefulWidget {
  const Jobadvertisement({super.key});
  @override
  _JobadvertisementState createState() => _JobadvertisementState();
}

class _JobadvertisementState extends State<Jobadvertisement> {
  List<Map<String, dynamic>> _postedJobs = [];

  @override
  void initState() {
    super.initState();
    _getPostedJobs();
  }

  _getPostedJobs() async {
    final firestore = FirebaseFirestore.instance;
    final jobsCollection = firestore.collection('jobs');
    final querySnapshot = await jobsCollection.get();
    setState(() {
      _postedJobs = querySnapshot.docs.map((doc) {
        Map<String, dynamic> job = doc.data();
        job['documentId'] = doc.id;
        return job;
      }).toList();
    });
  }

  void _showPostedJob(Map<String, dynamic> result) {
    setState(() {
      _postedJobs.add(result);
      _saveJobToFirestore(result);
    });
  }

  _saveJobToFirestore(Map<String, dynamic> job) async {
    final firestore = FirebaseFirestore.instance;
    final jobsCollection = firestore.collection('jobs');
    await jobsCollection.add(job);
  }

  Future<void> _deleteJob(String documentId) async {
    AwesomeDialog(
      context: context,
      dialogType: DialogType.warning,
      animType: AnimType.rightSlide,
      title: 'Delete Job Posting',
      desc: 'Are you sure you want to delete this job posting?',
      btnCancelOnPress: () {
        Navigator.pop(context);
      },
      btnOkOnPress: () async {
        final firestore = FirebaseFirestore.instance;
        final jobsCollection = firestore.collection('jobs');
        await jobsCollection.doc(documentId).delete();
        setState(() {
          _postedJobs.removeWhere((job) => job['documentId'] == documentId);
        });
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Job posting deleted')),
        );
      },
    ).show();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.deepPurple[300],
          title: Text("Jobs"),
          centerTitle: true,
          actions: [
            IconButton(
              icon: const Icon(Icons.search, color: Colors.black),
              onPressed: () async {
                final query = await showSearch<String>(
                  context: context,
                  delegate: JobadvertisementSearchDelegate(),
                );
                if (query != null) {
                  print('Search query: $query');
                }
              },
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
                              builder: (context) => PostJobScreen()),
                        );

                        if (result != null) {
                          _showPostedJob(result);
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
                            "Post a new job",
                            style: TextStyle(
                              color: Colors.deepPurple[300],
                              fontSize: 15,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 30),
                    _postedJobs.isNotEmpty
                        ? ListView.builder(
                            shrinkWrap: true,
                            physics: NeverScrollableScrollPhysics(),
                            itemCount: _postedJobs.length,
                            itemBuilder: (context, index) {
                              return Padding(
                                  padding: const EdgeInsets.only(left: 30.0),
                                  child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Row(children: [
                                          Icon(Icons.note_alt_outlined),
                                          Text(
                                            _postedJobs[index]
                                                    .containsKey('companyname')
                                                ? "${_postedJobs[index]['companyname']}"
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
                                            "${_postedJobs[index]['title']}",
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
                                              "${_postedJobs[index]['hours']}"),
                                        ]),
                                        SizedBox(
                                          height: 15,
                                        ),
                                        Row(children: [
                                          Icon(Icons.grading_rounded),
                                          Text(
                                              "${_postedJobs[index]['skills']}"),
                                        ]),
                                        SizedBox(
                                          height: 15,
                                        ),
                                        Row(children: [
                                          Icon(Icons.highlight_outlined),
                                          Text(
                                            _postedJobs[index]
                                                    .containsKey('aboutjob')
                                                ? "${_postedJobs[index]['aboutjob']}"
                                                : "about job not provided",
                                          ),
                                        ]),
                                        SizedBox(
                                          height: 15,
                                        ),
                                        Text(
                                          "To apply on this job send your CV to:",
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
                                            GestureDetector(
                                              onTap: () async {
                                                final email =
                                                    _postedJobs[index]['email'];
                                                final url =
                                                    'mailto:$email?subject=Job Application&body=';
                                                await launchUrl(Uri.parse(url));
                                              },
                                              child: Text(
                                                "${_postedJobs[index]['email']}",
                                                style: TextStyle(
                                                  color: Colors.blue,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                        SizedBox(
                                          height: 20,
                                        ),
                                        ElevatedButton(
                                          onPressed: () async {
                                            final documentId =
                                                _postedJobs[index].containsKey(
                                                        'documentId')
                                                    ? _postedJobs[index]
                                                        ['documentId']
                                                    : '';
                                            await _deleteJob(documentId);
                                          },
                                          style: ButtonStyle(
                                            backgroundColor:
                                                MaterialStateProperty.all(
                                                    Colors.deepPurple[300]),
                                            padding: MaterialStateProperty.all(
                                                EdgeInsets.symmetric(
                                                    horizontal: 5,
                                                    vertical: 10)),
                                            shape: MaterialStateProperty.all(
                                                RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            27))),
                                          ),
                                          child: Text(
                                            "Delete",
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 10,
                                            ),
                                          ),
                                        ),
                                      ]));
                            })
                        : Text("No job posted"),
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

class JobadvertisementSearchDelegate extends SearchDelegate<String> {
  final Jobadvertisement = [
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
    final results = Jobadvertisement.where((Jobadvertisement) =>
        Jobadvertisement.toLowerCase().contains(query.toLowerCase())).toList();
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
                // Navigator.pushNamed(context, '/Jobadvertisement');
              } else if (results[index] == "Frontend Development") {
                // Navigator.pushNamed(context, '/Jobadvertisement');
              } else if (results[index] == "Flutter") {
                // Navigator.pushNamed(context, '/Jobadvertisement');
              }
            },
          );
        },
      ),
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    final suggestions = Jobadvertisement.where((Jobadvertisement) =>
        Jobadvertisement.toLowerCase().contains(query.toLowerCase())).toList();
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
                // Navigator.pushNamed(context, '/Jobadvertisement');
              } else if (suggestions[index] == "Frontend Development") {
                //Navigator.pushNamed(context, '/Jobadvertisement');
              } else if (suggestions[index] == "Flutter") {
                // Navigator.pushNamed(context, '/Jobadvertisement');
              }
            },
          );
        },
      ),
    );
  }
}
