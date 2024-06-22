// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, library_private_types_in_public_api, avoid_print, use_build_context_synchronously, sort_child_properties_last, unnecessary_import, unused_element, deprecated_member_use, unused_import, prefer_const_declarations, unused_local_variable, unused_field, unused_label, non_constant_identifier_names

import 'dart:io';
import 'package:path_provider/path_provider.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:image_picker/image_picker.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(const Profile());
}

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  Map<String, dynamic>? _userData;
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _userData =
        ModalRoute.of(context)?.settings.arguments as Map<String, dynamic>?;
  }

  File? _image;

  final ImagePicker _picker = ImagePicker();

  Future<void> _getImage() async {
    try {
      final pickedFile = await _picker.pickImage(source: ImageSource.gallery);
      if (pickedFile != null) {
        setState(() {
          _image = File(pickedFile.path);
        });
      }
    } catch (e) {
      print('Error picking image: $e');
    }
  }
@override
  void initState() {
    super.initState();
    _loadProfilePicture();
  }
  Future<void> _loadProfilePicture() async {
    final directory = await getApplicationDocumentsDirectory();
    final file = File('${directory.path}/profile_picture.jpg');
    if (await file.exists()) {
      setState(() {
        _image = file;
      });
    }
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          actions: [
            IconButton(
              icon: const Icon(Icons.skip_next_outlined, color: Colors.black),
              onPressed: () {
                Navigator.pushNamed(context, '/Cv');
              },
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 30),
              GestureDetector(
                onTap: _getImage,
                child: CircleAvatar(
                  radius: 50,
                  backgroundImage: _image != null
                      ? Image.file(_image!).image
                      : AssetImage('assets/images/user.png'),
                  child: IconButton(
                    icon: const Icon(Icons.camera_alt),
                    onPressed: _getImage,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              itemProfile(
                  'Name', _userData?['name'] ?? '', CupertinoIcons.person),
              const SizedBox(height: 10),
              itemProfile(
                  'Phone', _userData?['phone'] ?? '', CupertinoIcons.phone),
              const SizedBox(height: 10),
              itemProfile('Address', _userData?['address'] ?? '',
                  CupertinoIcons.location),
              const SizedBox(height: 10),
              // itemProfile(
              //     'Email', _userData?['email'] ?? '', CupertinoIcons.mail),
              GestureDetector(
                  onTap: () async {
                    final email = _userData?['email'] ?? '';
                    final url = 'mailto:$email?subject=Job Application&body=';
                    await launchUrl(Uri.parse(url));
                  },
                  child: itemProfile(
                    'email',
                    _userData?['email'] ?? '',
                    CupertinoIcons.mail,
                  )),
              const SizedBox(
                height: 10,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(double.infinity, 70),
                  backgroundColor: Colors.white,
                  shadowColor: Colors.deepPurple[300],
                ),
                onPressed: () {},
                child: Row(
                  children: [
                    Icon(Icons.update_rounded),
                    SizedBox(width: 10),
                    Text('update Cv:'),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(double.infinity, 70),
                  backgroundColor: Colors.white,
                  shadowColor: Colors.deepPurple[300],
                ),
                onPressed: () {
                  Navigator.of(context).pushNamed("/Message");
                },
                child: Row(
                  children: [
                    Icon(Icons.messenger_outline_outlined),
                    SizedBox(width: 10),
                    Text('View chats:'),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () async {
                    await FirebaseAuth.instance.signOut();
                    Navigator.of(context)
                        .pushNamedAndRemoveUntil("/Hello", (route) => false);
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.deepPurple[300],
                    padding: const EdgeInsets.all(20),
                  ),
                  child: const Text(
                    'Log out',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  itemProfile(String title, String subtitle, IconData iconData) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
                offset: Offset(0, 5),
                color: const Color.fromRGBO(149, 117, 205, 1),
                spreadRadius: 2,
                blurRadius: 10)
          ]),
      child: ListTile(
        title: Text(title),
        subtitle: Text(subtitle),
        leading: Icon(iconData),
        tileColor: Colors.white,
      ),
    );
  }
}
