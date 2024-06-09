// ignore_for_file: prefer_const_constructors, sort_child_properties_last

import 'package:flutter/material.dart';

void main() {
  runApp(const Message());
}

class Message extends StatelessWidget {
  const Message({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.deepPurple[300],
          title: Row(
            children: [
              Image.asset(
                "assets/images/message.png",
                height: 25,
              ),
              SizedBox(
                width: 10,
              ),
              Text("Message me")
            ],
          ),
          actions: [
            IconButton(
              onPressed: () {
                // add here logout function
              },
              icon: Icon(Icons.close),
              color: Colors.black,
            ),
          ],
        ),
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(),
              Container(
                decoration: BoxDecoration(
                  border: Border(
                    top: BorderSide(
                      color: Colors.deepPurple,
                      width: 2,
                    ),
                  ),
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(
                      child: TextField(
                        onChanged: (value) {},
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.symmetric(
                            vertical: 10,
                            horizontal: 20,
                          ),
                          hintText: "Write your message here...",
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        "Send",
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                    ),
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
