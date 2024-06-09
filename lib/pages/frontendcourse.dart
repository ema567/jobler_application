// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, unnecessary_new, deprecated_member_use

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(const FrontEndCourse());
}

class FrontEndCourse extends StatelessWidget {
  const FrontEndCourse({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          centerTitle: true,
          title: Text(
            ' Front End Course',
            style: TextStyle(
              fontSize: 20,
              color: Colors.deepPurple[300],
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Divider(
                height: 25,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Center(
                    child: Container(
                      height: 50,
                      width: 200,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.deepPurple[300]),
                      child: Center(
                        child: new InkWell(
                            child: new Text(
                              'HTML ',
                              style: TextStyle(fontSize: 35),
                            ),
                            onTap: () => launch(
                                'https://youtu.be/qfPUMV9J5yw?si=KSlEXfKvS7fJ9HpS ')),
                      ),
                    ),
                  )
                ],
              ),
              Divider(
                height: 25,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Center(
                    child: Container(
                      height: 50,
                      width: 200,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.deepPurple[300]),
                      child: Center(
                        child: new InkWell(
                            child: new Text(
                              'CSS ',
                              style: TextStyle(fontSize: 35),
                            ),
                            onTap: () => launch(
                                'https://youtu.be/qyVkLebgfzY?si=WIhB2TqR1jJcXX3- ')),
                      ),
                    ),
                  )
                ],
              ),
              Divider(
                height: 25,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Center(
                    child: Container(
                      height: 50,
                      width: 200,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.deepPurple[300]),
                      child: Center(
                        child: new InkWell(
                            child: new Text(
                              'HTML/CSS 1',
                              style: TextStyle(fontSize: 32),
                            ),
                            onTap: () => launch(
                                'https://youtu.be/_-eh8cwGGwg?si=2qMGE5_2TgWBa0lg')),
                      ),
                    ),
                  )
                ],
              ),
              Divider(
                height: 25,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Center(
                    child: Container(
                      height: 50,
                      width: 200,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.deepPurple[300]),
                      child: Center(
                        child: new InkWell(
                            child: new Text(
                              'HTML/CSS 2',
                              style: TextStyle(fontSize: 32),
                            ),
                            onTap: () => launch(
                                'https://youtu.be/heuDmrEAgUA?si=AVOwgWlow7wmWezk')),
                      ),
                    ),
                  )
                ],
              ),
              Divider(
                height: 25,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Center(
                    child: Container(
                      height: 50,
                      width: 200,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.deepPurple[300]),
                      child: Center(
                        child: new InkWell(
                            child: new Text(
                              'HTML/CSS 3',
                              style: TextStyle(fontSize: 32),
                            ),
                            onTap: () => launch(
                                'https://youtu.be/vkc99WHcDTk?si=FprtbHotPYI29SpI')),
                      ),
                    ),
                  )
                ],
              ),
              Divider(
                height: 25,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Center(
                    child: Container(
                      height: 50,
                      width: 200,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.deepPurple[300]),
                      child: Center(
                        child: new InkWell(
                            child: new Text(
                              'HTML/CSS 4',
                              style: TextStyle(fontSize: 32),
                            ),
                            onTap: () => launch(
                                'https://youtu.be/DflEcuzjsyA?si=xlE4ZfPtEkJyzWEQ')),
                      ),
                    ),
                  )
                ],
              ),
              Divider(
                height: 25,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Center(
                    child: Container(
                      height: 50,
                      width: 200,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.deepPurple[300]),
                      child: Center(
                        child: new InkWell(
                            child: new Text(
                              'JavaScript 1',
                              style: TextStyle(fontSize: 35),
                            ),
                            onTap: () => launch(
                                'https://youtu.be/gIGGhFlGgLI?si=uYf1X78oA2PtqFst')),
                      ),
                    ),
                  )
                ],
              ),
              Divider(
                height: 25,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Center(
                    child: Container(
                      height: 50,
                      width: 200,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.deepPurple[300]),
                      child: Center(
                        child: new InkWell(
                            child: new Text(
                              'JavaScript 2',
                              style: TextStyle(fontSize: 35),
                            ),
                            onTap: () => launch(
                                'https://youtu.be/FKrfis1W1tk?si=f57OE5J1RyvVxFUL')),
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
