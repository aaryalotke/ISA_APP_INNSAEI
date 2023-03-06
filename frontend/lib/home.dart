// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:isa/upcoming_events.dart';
import 'package:isa/DS_home.dart';
import 'gallery_main.dart';
import 'calender_main.dart';

import 'main_contactus.dart';
import 'certi_main.dart';
import 'main_hw.dart';
import 'calender_main.dart';
import 'main_profile.dart';
// import 'package:isa/profile_m.dart';
import 'main_developers.dart';
import 'edi_main.dart';
import 'main_our_team.dart';
import 'models/format_certi.dart';

import 'developers.dart';

import 'otp_n_members.dart';
import 'main.dart';
import 'email_members.dart';
import 'email_n_members.dart';

class Home extends StatelessWidget {
  final String access;
  Home(this.access);
  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: 'Voces',
      ),
      home: MyHomePage(access),
    );
  }
}

class MyHomePage extends StatefulWidget {
  final String access;

  MyHomePage(this.access);
  // String titleInput;
  // String amountInput;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) => GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Container(
        decoration: BoxDecoration(),
        child: Scaffold(
          backgroundColor: Color(0xFFFFFFFF),
          body: SafeArea(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Text(
                    'Home Pageeeee',
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.black, fontSize: 24),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => gallery_main()),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      padding:
                          EdgeInsets.symmetric(horizontal: 140, vertical: 10),
                    ),
                    child: Text('Gallery'),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => profile_members()),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      padding:
                          EdgeInsets.symmetric(horizontal: 140, vertical: 10),
                    ),
                    child: Text('Profile'),
                  ),
                  // ElevatedButton(
                  //   onPressed: () {
                  //     Navigator.push(
                  //       context,
                  //       MaterialPageRoute(
                  //           builder: (context) => developersPage()),
                  //     );
                  //   },
                  //   style: ElevatedButton.styleFrom(
                  //     padding:
                  //         EdgeInsets.symmetric(horizontal: 140, vertical: 10),
                  //   ),
                  //   child: Text('Developers'),
                  // ),

                  //aarya's pages
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => certi_page()),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      padding:
                          EdgeInsets.symmetric(horizontal: 140, vertical: 10),
                    ),
                    child: Text('Certificate Page'),
                  ),

                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => calender_main()),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      padding:
                          EdgeInsets.symmetric(horizontal: 140, vertical: 10),
                    ),
                    child: Text('Calender'),
                  ),

                  ElevatedButton(
                    onPressed: () {
                      print(widget.access);
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => SIForm(widget.access)),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      padding:
                          EdgeInsets.symmetric(horizontal: 140, vertical: 10),
                    ),
                    child: Text('Contact us'),
                  ),

                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => inventory()),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      padding:
                          EdgeInsets.symmetric(horizontal: 140, vertical: 10),
                    ),
                    child: Text('Hardware Inventory'),
                  ),

                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => edito()),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      padding:
                          EdgeInsets.symmetric(horizontal: 140, vertical: 10),
                    ),
                    child: Text('Editorials'),
                  ),

                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => trailDevelopers()),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      padding:
                          EdgeInsets.symmetric(horizontal: 140, vertical: 10),
                    ),
                    child: Text('ISA Developers'),
                  ),

                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => team_main()),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      padding:
                          EdgeInsets.symmetric(horizontal: 140, vertical: 10),
                    ),
                    child: Text('Our Team'),
                  ),

                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => team_main()),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      padding:
                          EdgeInsets.symmetric(horizontal: 140, vertical: 10),
                    ),
                    child: Text('Profile'),
                  ),

                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => homePage()),
                        // MaterialPageRoute(builder: (context) => homePage()),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      padding:
                          EdgeInsets.symmetric(horizontal: 140, vertical: 10),
                    ),
                    // child: Text('Upcoming Events'),
                    child: Text('Home'),
                  ),
                ],
              ),
            ),
          ),
        ),
      ));
}
