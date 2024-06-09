// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, unnecessary_new, deprecated_member_use

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(const UiUxCourse());
}

class UiUxCourse extends StatelessWidget {
  const UiUxCourse({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          centerTitle: true,
          title: Text(
            'UI&UX Course',
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
                              'Intro ',
                              style: TextStyle(fontSize: 35),
                            ),
                            onTap: () => launch(
                                'https://youtu.be/ZQObK6XkGHE?si=qxK-qI5Vl9Y0zMjs')),
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
                              'Tools',
                              style: TextStyle(fontSize: 35),
                            ),
                            onTap: () => launch(
                                'https://youtu.be/T2uCpf9ZSAc?si=6CfwhuB04gx0Kn3D  ')),
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
                              'Art-boards',
                              style: TextStyle(fontSize: 35),
                            ),
                            onTap: () => launch(
                                'https://youtu.be/cbqJ7knGBZo?si=0bHHmpmw7tGXmYX1')),
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
                              'Art-boards tools',
                              style: TextStyle(fontSize: 25),
                            ),
                            onTap: () => launch(
                                'https://youtu.be/th1IuhJBoAA?si=AMoT7kbqECCjqH8X ')),
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
                              'UI kits',
                              style: TextStyle(fontSize: 35),
                            ),
                            onTap: () => launch(
                                'https://youtu.be/rLs9LgTr-dU?si=FTLsJtsFNkr7n5-N   ')),
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
                              'Left tools ',
                              style: TextStyle(fontSize: 35),
                            ),
                            onTap: () => launch(
                                'https://youtu.be/IWU7160UGlY?si=8RfFVd5_sUfy6mes  ')),
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
                              'Rectangle tool ',
                              style: TextStyle(fontSize: 30),
                            ),
                            onTap: () => launch(
                                'https://youtu.be/6N3HntLVv80?si=sVlSi3BDO1-gfQsh ')),
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
                              'Triangle tool',
                              style: TextStyle(fontSize: 35),
                            ),
                            onTap: () => launch(
                                'https://youtu.be/xXyFBDBpsME?si=7DkS646sfJYI_qvt ')),
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
                              'Line tool',
                              style: TextStyle(fontSize: 35),
                            ),
                            onTap: () => launch(
                                'https://youtu.be/-x6UrvVNetc?si=TbsSp7Sp7upKYOBO ')),
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
                              'Text tool',
                              style: TextStyle(fontSize: 35),
                            ),
                            onTap: () => launch(
                                'https://youtu.be/XV4m2Y6Ol8c?si=SMyil4uIggZaCbGr ')),
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
                              'Masking images ',
                              style: TextStyle(fontSize: 25),
                            ),
                            onTap: () => launch(
                                'https://youtu.be/wCf3TUnayxI?si=rkF_InoYCEvkHSLT  ')),
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
                              'Repeat grid',
                              style: TextStyle(fontSize: 30),
                            ),
                            onTap: () => launch(
                                'https://youtu.be/rceFOPEUwTU?si=sYzlK2vDef3h1cQn')),
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
                              'Components',
                              style: TextStyle(fontSize: 30),
                            ),
                            onTap: () => launch(
                                'https://youtu.be/Y6FlkpyKadM?si=4zWgP6Nh2BzYu6R3  ')),
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
                              'Prototyping ',
                              style: TextStyle(fontSize: 28),
                            ),
                            onTap: () => launch(
                                'https://youtu.be/CbpyrtdnAq4?si=cgpd-vk9xXggLToM ')),
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
                              'Overlay',
                              style: TextStyle(fontSize: 30),
                            ),
                            onTap: () => launch(
                                'https://youtu.be/y56NUWaTB7Q?si=H2vLH58qHTkmPlyi  ')),
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
                              'Auto animate',
                              style: TextStyle(fontSize: 30),
                            ),
                            onTap: () => launch(
                                'https://youtu.be/CA6hFqWG7is?si=Q2zYrQ5aZ3PYnRPv ')),
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
                              'Auto animate (1)',
                              style: TextStyle(fontSize: 25),
                            ),
                            onTap: () => launch(
                                'https://youtu.be/6Ye_18Fy2Uc?si=Kjj5b8y_TWYA2q3k')),
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
                              ' Auto animate (2)',
                              style: TextStyle(fontSize: 25),
                            ),
                            onTap: () => launch(
                                'https://youtu.be/evzE6o1WNg4?si=olsScDtr9-49cAWV')),
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
                              ' Auto animate (3)',
                              style: TextStyle(fontSize: 25),
                            ),
                            onTap: () => launch(
                                'https://youtu.be/rYTN4udSPEg?si=wWk_f3foIGmXFrh0 ')),
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
                              ' statement',
                              style: TextStyle(fontSize: 35),
                            ),
                            onTap: () => launch(
                                'https://youtu.be/Zs5pSicJQvM?si=f9cGjnqZ1vT4sPMo')),
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
                              ' Trigger ',
                              style: TextStyle(fontSize: 35),
                            ),
                            onTap: () => launch(
                                'https://youtu.be/xl364oeTOLQ?si=jPF00JOgs1lMiz-W ')),
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
                              'Backgrounds ',
                              style: TextStyle(fontSize: 32),
                            ),
                            onTap: () => launch(
                                'https://youtu.be/npQvy8IB64o?si=qGezdeiMdVNETJYA')),
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
                              'The theoretical part ',
                              style: TextStyle(fontSize: 22),
                            ),
                            onTap: () => launch(
                                'https://youtu.be/rKE0ICBmtA0?si=ROCwQIVUKRcxz7XY ')),
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
                              'learning course',
                              style: TextStyle(fontSize: 27),
                            ),
                            onTap: () => launch(
                                'https://youtu.be/isKO73ikaRs?si=9kqWwwtM7b8E2q-u')),
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


