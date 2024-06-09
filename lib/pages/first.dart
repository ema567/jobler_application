// ignore_for_file: prefer_const_constructors, sort_child_properties_last


import 'package:flutter/material.dart';

void main() {
  runApp(const First());
}



class First extends StatelessWidget {
  const First({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        floatingActionButton: FloatingActionButton(
          onPressed: () {
           Navigator.pushNamed(context, "/Hello");
          },
          child: Icon(Icons.arrow_forward),
          foregroundColor: Colors.deepPurple[300],
        ),
        body: Stack(
          children: [
            Positioned(
                child: Center(child: Image.asset("assets/images/logo.png"))),
          ],
        ),
      ),
    );
  }
}
