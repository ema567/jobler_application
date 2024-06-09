// ignore_for_file: prefer_const_constructors, avoid_print

import 'package:flutter/material.dart';

void main() {
  runApp(const Offlinepage());
}

class Offlinepage extends StatelessWidget {
  const Offlinepage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Center(
            child: Text(
              "Offline courses",
              style: TextStyle(
                color: Colors.black,
                fontSize: 25,
                fontWeight: FontWeight.bold,
                height: 2,
                letterSpacing: 1,
              ),
            ),
          ),
          backgroundColor: Colors.white,
          actions: [DefaultTextStyle(
              style: const TextStyle(color: Colors.black),
              child:
            IconButton(
                icon: const Icon(Icons.search, color: Colors.black),
                onPressed: () async {     final query = await showSearch<String>(
                    context: context,
                    delegate: OfflineSearchDelegate(),
                  );
                  if (query != null) {
                    print('Search query: $query');
                  } }),
         ), ],
        ),
        body: Stack(
          children: [
            Column(
              children: [
                SingleChildScrollView(
                  child: Center(
                    child: Column(
                      children: [
                        SizedBox(
                          height: 30,
                        ),
                        Image.asset("assets/images/offlinepage.png"),
                        SizedBox(
                          height: 30,
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            minimumSize: const Size(double.infinity, 50),
                            textStyle: const TextStyle(fontSize: 30),
                            backgroundColor: Colors.deepPurple[300],
                            foregroundColor: Colors.white,
                          ),
                          child: const Text("Ui/Ux"),
                          onPressed: () {
                            Navigator.pushNamed(context, '/Programming');
                          },
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            minimumSize: const Size(double.infinity, 50),
                            textStyle: const TextStyle(fontSize: 20),
                            backgroundColor: Colors.deepPurple[300],
                            foregroundColor: Colors.white,
                          ),
                          child: const Text(
                            "Frontend Development",
                            style: TextStyle(fontSize: 23),
                          ),
                          onPressed: () {
                            Navigator.pushNamed(context, '/Webdevelopment');
                          },
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            minimumSize: const Size(double.infinity, 50),
                            textStyle: const TextStyle(fontSize: 30),
                            backgroundColor: Colors.deepPurple[300],
                            foregroundColor: Colors.white,
                          ),
                          child: const Text("Flutter"),
                          onPressed: () {
                            Navigator.pushNamed(context, '/Mobileapplication');
                          },
                        ),
                      ],
                    ),
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



class OfflineSearchDelegate extends SearchDelegate<String> {
  final courses = [
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
    final results = courses
        .where((course) => course.toLowerCase().contains(query.toLowerCase()))
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
                // Navigator.pushNamed(context, '/Programming');
              } else if (results[index] == "Frontend Development") {
                // Navigator.pushNamed(context, '/webdevelopment');
              } else if (results[index] == "Flutter") {
                // Navigator.pushNamed(context, '/mobileapplication');
              }
            },
          );
        },
      ),
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    final suggestions = courses
        .where((course) => course.toLowerCase().contains(query.toLowerCase()))
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
                // Navigator.pushNamed(context, '/Programming');
              } else if (suggestions[index] == "Frontend Development") {
                // Navigator.pushNamed(context, '/webdevelopment');
              } else if (suggestions[index] == "Flutter") {
                // Navigator.pushNamed(context, '/mobileapplication');
              }
            },
          );
        },
      ),
    );
  }
}

