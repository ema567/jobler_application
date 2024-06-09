// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, prefer_const_literals_to_create_immutables,

import 'package:flutter/material.dart';

void main() {
  runApp(const Mobileapplication());
}

class Mobileapplication extends StatelessWidget {
  const Mobileapplication({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.deepPurple[300],
          title: Text(
            "Flutter",
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
                      "Android and flutter developer:",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          backgroundColor: Colors.deepPurple[300]),
                    ),
                  ),
                ],
              ),
              Text(
                "Address:34 zawya hmra, Qasr Ad Dobarah, El Zawya El Hamra, Cairo.",
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
                    "01271507452",
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
                      "Route:",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          backgroundColor: Colors.deepPurple[300]),
                    ),
                  ),
                ],
              ),
              Text(
                "Address:6 El Tahrir, Ad Doqi, Dokki, Giza.",
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
                    "01023639954",
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
                      "Yat Education Centers:",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          backgroundColor: Colors.deepPurple[300]),
                    ),
                  ),
                ],
              ),
              Text(
                "Address:48,Street 7, Maadi El Khabiry EL Sharkaia, Egypt.",
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
                    "0224183457",
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
