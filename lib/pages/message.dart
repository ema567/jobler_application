// ignore_for_file: prefer_const_constructors, sort_child_properties_last, avoid_print

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

final _firestore = FirebaseFirestore.instance;
late User signedInUser;

void main() {
  runApp(const Message());
}

class Message extends StatefulWidget {
  const Message({super.key});

  @override
  State<Message> createState() => _MessageState();
}

class _MessageState extends State<Message> {
  final messageTextController = TextEditingController();
  final _auth = FirebaseAuth.instance;

  String? messsageText;
  @override
  void initState() {
    super.initState();
    getCurrentUser();
  }

  void getCurrentUser() {
    try {
      final user = _auth.currentUser;
      if (user != null) {
        signedInUser = user;
        print(signedInUser.email);
      }
    } catch (e) {
      print(e);
    }
  }

  // void getMessages() async {
  //   final messages = await _firestore.collection('messages').get();
  //   for (var message in messages.docs) {
  //     print(message.data());
  //   }
  // }
  // void messagesStream() async {
  //   await for (var snapshot in _firestore.collection('messages').snapshots()) {
  //     for (var message in snapshot.docs) {
  //       print(message.data());
  //     }
  //   }
  // }

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
                // messagesStream();
                 Navigator.pushNamed(context, '/Home');
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
              MessageStreemBuilder(),
              Container(
                decoration: BoxDecoration(
                  border: Border(
                    top: BorderSide(
                      color: Color.fromARGB(255, 161, 128, 219),
                      width: 2,
                    ),
                  ),
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(
                      child: TextField(
                        controller: messageTextController,
                        onChanged: (value) {
                          messsageText = value;
                        },
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
                      onPressed: () {
                        messageTextController.clear();
                        _firestore.collection('messages').add({
                          'text': messsageText,
                          'sender': signedInUser.email,
                           'time': FieldValue.serverTimestamp(),
                        });
                      },
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

class MessageStreemBuilder extends StatelessWidget {
  const MessageStreemBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<QuerySnapshot>(
        stream: _firestore.collection('messages').orderBy('time').snapshots(),
        builder: (context, snapshot) {
          List<MessageLine> messageWidgets = [];
          if (!snapshot.hasData) {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
          final messages = snapshot.data!.docs;
          for (var message in messages) {
            final messageText = message.get('text');
            final messageSender = message.get('sender');
            final currentUser = signedInUser.email;
            if (currentUser == messageSender) {}
            final messageWidget = MessageLine(
              sender: messageSender,
              text: messageText,
              isMe: currentUser == messageSender,
            );
            messageWidgets.add(messageWidget);
          }
          return Expanded(
            child: ListView(
              padding: EdgeInsets.symmetric(
                horizontal: 10,
                vertical: 20,
              ),
              children: messageWidgets,
            ),
          );
        });
  }
}

class MessageLine extends StatelessWidget {
  const MessageLine({this.text, this.sender, required this.isMe ,  super.key});
  final String? sender;
  final String? text;
  final bool isMe;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        crossAxisAlignment: isMe ? CrossAxisAlignment.end : CrossAxisAlignment.start,
        children: [
          Text(
            '$sender',
            style: TextStyle(fontSize: 12, color: Colors.grey[900]),
          ),
          Material(
            elevation: 5,
            borderRadius: isMe ? BorderRadius.only(
              topLeft: Radius.circular(30),
              bottomLeft: Radius.circular(30),
              bottomRight: Radius.circular(30),
            ):BorderRadius.only(
              topRight: Radius.circular(30),
              bottomLeft: Radius.circular(30),
              bottomRight: Radius.circular(30),) ,
            color: isMe ?  Colors.deepPurple[300] : Colors.white,
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 10,
              ),
              child: Text(
                '$text',
                style: TextStyle(fontSize: 15,  color: isMe ? Colors.white : Colors.black ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}


