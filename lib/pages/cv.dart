// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last, avoid_unnecessary_containers, library_private_types_in_public_api, unused_field, unused_import, use_build_context_synchronously, await_only_futures, use_key_in_widget_constructors, non_constant_identifier_names


import 'package:flutter/material.dart';


void main() {
  runApp(Cv());
}

class Cv extends StatelessWidget {
  const Cv({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Center(
            child: Text(
              "Jobler",
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
          actions: [
            IconButton(
              icon: const Icon(Icons.skip_next_outlined, color: Colors.black),
              onPressed: () {
                Navigator.pushNamed(context, '/Home');
              },
            )
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: Icon(Icons.downloading_rounded),
          foregroundColor: Colors.deepPurple[300],
        ),
        body: Stack(
          children: [
            Column(
              children: [
                SizedBox(
                  height: 20,
                ),
                Positioned(
                  child: Center(
                    child: Image.asset("assets/images/cv.png"),
                  ),
                ),
                Text(
                  "download your CV",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    height: 2,
                    letterSpacing: 1,
                  ),
                  maxLines: 2,
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  "-now you can have your professional CV to apply for any job!",
                  style: TextStyle(
                    color: Colors.grey[800],
                    fontSize: 15,
                    fontWeight: FontWeight.normal,
                    wordSpacing: 1,
                  ),
                  maxLines: 2,
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: 2,
                ),
                Text(
                  "-get the best path for you through our application platform that truly shines for you...",
                  style: TextStyle(
                    color: Colors.grey[800],
                    fontSize: 15,
                    fontWeight: FontWeight.normal,
                    wordSpacing: 1,
                  ),
                  maxLines: 2,
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
