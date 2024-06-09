// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

void main() {
  runApp(const Programming());
}

class Programming extends StatelessWidget {
  const Programming({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.deepPurple[300],
          title: Text(
            "Ui/Ux",
            style: TextStyle(color: Colors.white),
          ),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 10.0),
                    child: Text(
                      "Itsharks:",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          backgroundColor: Colors.deepPurple[300]),
                    ),
                  ),
                ],
              ),
              Text(
                "Address: Villa No. 48, 2nd Floor, Flat 6, 105th Street, El Horreya Sq, Maadi, Cairo.",
                style: TextStyle(fontSize: 20),
                maxLines: 3,
              ),
              Row(
                children: [
                  Text(
                    "Phone Number:",
                    style: TextStyle(fontSize: 20),
                  ),
                  Text(
                    "01017743315",
                    style: TextStyle(fontSize: 20),
                  ),
                ],
              ),
              Divider(
                height: 20,
                color: Colors.deepPurple[300],
              ),
              SizedBox(
                height: 5,
              ),
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 10.0),
                    child: Text(
                      "MAZE:",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          backgroundColor: Colors.deepPurple[300]),
                    ),
                  ),
                ],
              ),
              Text(
                "Address:49 Mohy Al-Din Abu Al-EZZ ST, Corner of Amman Street, in front of H&M, close to Al-Buhouth Metro Station.",
                style: TextStyle(fontSize: 20),
                maxLines: 3,
              ),
              Row(
                children: [
                  Text(
                    "Phone number:",
                    style: TextStyle(fontSize: 20),
                  ),
                  Text(
                    "01115050241",
                    style: TextStyle(fontSize: 20),
                  ),
                ],
              ),
              Divider(
                height: 20,
                color: Colors.deepPurple[300],
              ),
              SizedBox(
                height: 5,
              ),
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 10.0),
                    child: Text(
                      "Petra Juniors:",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          backgroundColor: Colors.deepPurple[300]),
                    ),
                  ),
                ],
              ),
              Text(
                "Address: 1 Al-Assal Street, off Al-Gomhouria Street Assiut.",
                style: TextStyle(fontSize: 20),
                maxLines: 2,
              ),
              Row(
                children: [
                  Text(
                    "Phone number:",
                    style: TextStyle(fontSize: 20),
                  ),
                  Text(
                    "01050094717",
                    style: TextStyle(fontSize: 20),
                  ),
                ],
              ),
              Divider(
                height: 20,
                color: Colors.deepPurple[300],
              ),
              SizedBox(
                height: 5,
              ),
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 10.0),
                    child: Text(
                      "SemiCorner:",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          backgroundColor: Colors.deepPurple[300]),
                    ),
                  ),
                ],
              ),
              Text(
                "Address:4, Street 151, off Freedom squareMaadi, 11th floor,building.",
                style: TextStyle(fontSize: 20),
                maxLines: 2,
              ),
              Row(
                children: [
                  Text(
                    "Phone number:",
                    style: TextStyle(fontSize: 20),
                  ),
                  Text(
                    "01018288397",
                    style: TextStyle(fontSize: 20),
                  ),
                ],
              ),
              Divider(
                height: 20,
                color: Colors.deepPurple[300],
              ),
              SizedBox(
                height: 5,
              ),
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 10.0),
                    child: Text(
                      "EraaSoft:",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          backgroundColor: Colors.deepPurple[300]),
                    ),
                  ),
                ],
              ),
              Text(
                "Address:5 Mossadak Ad Doqi, 5 Mossadak, street, Dokki, Giza.",
                style: TextStyle(fontSize: 20),
                maxLines: 2,
              ),
              Row(
                children: [
                  Text(
                    "Phone number:",
                    style: TextStyle(fontSize: 20),
                  ),
                  Text(
                    "01068268354",
                    style: TextStyle(fontSize: 20),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
