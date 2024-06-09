// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, prefer_const_literals_to_create_immutables, unnecessary_import

import 'package:flutter/material.dart';

void main() {
  runApp(const Webdevelopment());
}

class Webdevelopment extends StatelessWidget {
  const Webdevelopment({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.deepPurple[300],
          title: Text(
            "Frontend Development",
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
                      "Zatech:",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          backgroundColor: Colors.deepPurple[300]),
                    ),
                  ),
                ],
              ),
              Text(
                "Address:Building 53, Ali Haiba Street in front of Maali Sidi Bishr School, Alexandria.",
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
                    "01019283361",
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















































































































































// // ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, prefer_const_literals_to_create_immutables, unnecessary_import

// import 'package:flutter/material.dart';

// void main() {
//   runApp(const Webdevelopment());
// }

// class Webdevelopment extends StatelessWidget {
//   const Webdevelopment({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Scaffold(
//         appBar: AppBar(
//           backgroundColor: Colors.deepPurple[300],
//           title: Text("Frontend Development"),
//           centerTitle: true,
//         ),
//         body: Column(
//           children: [
//             Text(
//               "itsharks",
//               style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
//             ),
//             Text(
//               "Address: Villa No. 48, 2nd Floor, Flat 6, 105th Street, El Horreya Sq, Maadi, Cairo",
//               style: TextStyle(fontSize: 20),
//             ),
//             Text(
//               "Phone Number:01017743315",
//               style: TextStyle(fontSize: 20),
//             ),
//             SizedBox(
//               height: 10,
//             ),
//             Text(
//               "Zatech",
//               style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
//             ),
//             Text(
//               "Address:Building 53, Ali Haiba Street in front of Maali Sidi Bishr School, Alexandria",
//               style: TextStyle(fontSize: 20),
//             ),
//             Text(
//               "Phone number:01019283361",
//               style: TextStyle(fontSize: 20),
//             ),
//             SizedBox(
//               height: 10,
//             ),
//             Text(
//               "Route",
//               style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
//             ),
//             Text(
//               "Address:6 El Tahrir, Ad Doqi, Dokki, Giza",
//               style: TextStyle(fontSize: 20),
//             ),
//             Text(
//               "Phone number:01023639954",
//               style: TextStyle(fontSize: 20),
//             ),
//             SizedBox(
//               height: 10,
//             ),
//             Text(
//               "EraaSoft",
//               style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
//             ),
//             Text(
//               "Address:5 Mossadak Ad Doqi, 5 Mossadak, street, Dokki, Giza",
//               style: TextStyle(fontSize: 20),
//             ),
//             Text(
//               "Phone number:01068268354",
//               style: TextStyle(fontSize: 20),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
