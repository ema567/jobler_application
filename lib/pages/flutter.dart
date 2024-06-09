// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, unnecessary_new, deprecated_member_use

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(const FlutterCourse());
}

class FlutterCourse extends StatelessWidget {
  const FlutterCourse({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          centerTitle: true,
          title: Text(
            'Flutter Course',
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
                              ' Full course ',
                              style: TextStyle(fontSize: 35),
                            ),
                            onTap: () => launch(
                                'https://youtu.be/FVgQcfXHeGo?si=xssZ3DXc-UnLd0vd ')),
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
                        color: Colors.deepPurple[300],
                      ),
                      child: Center(
                        child: new InkWell(
                            child: new Text(
                              'Flutter Setup',
                              style: TextStyle(fontSize: 32),
                            ),
                            onTap: () => launch(
                                'https://youtu.be/f8-gCzCpvFE?si=SM0DW3rjIQD1pzOk ')),
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
                              ' Emulator Flutter',
                              style: TextStyle(fontSize: 25),
                            ),
                            onTap: () => launch(
                                'https://youtu.be/j3HKAjEuprQ?si=FqnXEOOrFCSJoP9c')),
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
                              'Flutter Ubdate',
                              style: TextStyle(fontSize: 31),
                            ),
                            onTap: () => launch(
                                'https://youtu.be/tBO8QAbveCo?si=cp8TFbdvU3slgeGA')),
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
                              'Flutter Project',
                              style: TextStyle(fontSize: 31),
                            ),
                            onTap: () => launch(
                                'https://youtu.be/v4ovl4DWRcA?si=R6yPQ4x_t-OcP8fH  ')),
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
                              'Text Style',
                              style: TextStyle(fontSize: 35),
                            ),
                            onTap: () => launch(
                                'https://youtu.be/eeTLJlFkBeQ?si=kS93TvC3yefHW44z ')),
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
                              'Container ',
                              style: TextStyle(fontSize: 35),
                            ),
                            onTap: () => launch(
                                'https://youtu.be/J1-ygJOaRfM?si=0pwZtjcKybrdEiQW')),
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
                              'Column/SizedBox',
                              style: TextStyle(fontSize: 23),
                            ),
                            onTap: () => launch(
                                'https://youtu.be/5KktSwkH1J4?si=hxeRo-80JjpraJyD')),
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
                              'Row&SizedBox',
                              style: TextStyle(fontSize: 28),
                            ),
                            onTap: () => launch(
                                'https://youtu.be/0jNrF1Uk8xM?si=E02uH-eZxEOYNyy4 ')),
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
                              'Task solution',
                              style: TextStyle(fontSize: 32),
                            ),
                            onTap: () => launch(
                                'https://youtu.be/L2IApyCHXDc?si=W12SNreUYnecobCu')),
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
                              'Expanded widget',
                              style: TextStyle(fontSize: 25),
                            ),
                            onTap: () => launch(
                                'https://youtu.be/Rf4LzXGex8w?si=6nN95IQdlABCAJjl  ')),
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
                              'Padding widget',
                              style: TextStyle(fontSize: 28),
                            ),
                            onTap: () => launch(
                                'https://youtu.be/W6f9RodOtsE?si=TcQwoJMJ0G2glhQ6 ')),
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
                              'Center & Stack',
                              style: TextStyle(fontSize: 30),
                            ),
                            onTap: () => launch(
                                'https://youtu.be/BkV3e8V-8ts?si=DLlQUNSDr613F0pQ ')),
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
                              'ElevatedButton',
                              style: TextStyle(fontSize: 28),
                            ),
                            onTap: () => launch(
                                'https://youtu.be/Iq_rREgkUIs?si=ZErAy7UfxVLA6MHX ')),
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
                              ' Add Fonts',
                              style: TextStyle(fontSize: 30),
                            ),
                            onTap: () => launch(
                                'https://youtu.be/Ure00HaJs4o?si=SUyzlDPNZZeryrf2  ')),
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
                              'Add images',
                              style: TextStyle(fontSize: 30),
                            ),
                            onTap: () => launch(
                                'https://youtu.be/dUEHaHEqkU8?si=5rOBkky5YBVwyDus  ')),
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
                              'ninga project',
                              style: TextStyle(fontSize: 28),
                            ),
                            onTap: () => launch(
                                'https://youtu.be/nMmWb8AJjyk?si=ZQISsSn9kFA6juaN')),
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
                              'Text Field',
                              style: TextStyle(fontSize: 28),
                            ),
                            onTap: () => launch(
                                'https://youtu.be/6r4RO66Dkbk?si=E9y0r8dEH4VzFQV4')),
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
                              'TASK solution',
                              style: TextStyle(fontSize: 28),
                            ),
                            onTap: () => launch(
                                'https://youtu.be/er_49HLeWFU?si=bBtLjypBFxQra5lH  ')),
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
                              'Navigate',
                              style: TextStyle(fontSize: 30),
                            ),
                            onTap: () => launch(
                                'https://youtu.be/OQmFGiztHiM?si=kRo4NFGbeLFkbZz7')),
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
                              ' login & logout',
                              style: TextStyle(fontSize: 30),
                            ),
                            onTap: () => launch(
                                'https://youtu.be/-x4sJv5emu8?si=-4Lqd0CTlu1WvqpT')),
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
                              'flutter project',
                              style: TextStyle(fontSize: 32),
                            ),
                            onTap: () => launch(
                                'https://youtu.be/5H-y4JjDOxk?si=-aKqtWnlW-_NrfiM')),
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
                              'second level',
                              style: TextStyle(fontSize: 30),
                            ),
                            onTap: () => launch(
                                'https://youtu.be/hqxYkpeA1QA?si=JDQEZiIiSCeDI4dG')),
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
                              'third level ',
                              style: TextStyle(fontSize: 32),
                            ),
                            onTap: () => launch(
                                'https://youtu.be/F1OOWXDJEY4?si=2dDXbmcLm1aL-4Pl ')),
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
                              ' instagram project',
                              style: TextStyle(fontSize: 24),
                            ),
                            onTap: () => launch(
                                'https://youtu.be/jtOLGcX7nj0?si=tHSsAIXTF4h8LIR-')),
                      ),
                    ),
                  )
                ],
              ),
              Divider(
                height: 25,
              ),
            ],
          ),
        ),
      ),
    );
  }
}


