// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, prefer_typing_uninitialized_variables

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import 'email_members.dart';
import 'main_newuser.dart';

import 'otp_n_members.dart';
import 'email_members.dart';
import 'email_n_members.dart';
import 'otp_members.dart';
// ignore: duplicate_import
import '../models/users.dart';
import 'trial.dart';
import 'trialEmail.dart';

// import 'user1.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(new_main());
}

class new_main extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: 'Voces',
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  // late User user;
  // late String access;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  late String access1;

  // @override
  // void initState() {
  //   super.initState();
  //   access1 = widget.access;
  // }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        height: size.height,
        width: double.infinity,
        child: Stack(
          clipBehavior: Clip.antiAlias,
          alignment: Alignment.center,
          children: <Widget>[
            Positioned(
              top: size.height * 0.07,
              child: Image.asset(
                'assets/images/logo_isa_black.png',
                width: size.width * 0.5,
              ),
            ),
            Container(
              width: double.infinity,
              margin: EdgeInsets.only(top: 0, bottom: 50),
              padding: EdgeInsets.only(top: 20),

              // decoration: BoxDecoration(border: Border.all()),
              child: CarouselSlider(
                items: [
                  Container(
                    child: Column(
                      children: <Widget>[
                        Image.asset(
                          'assets/images/ISAintro_vector.png',
                          height: size.height * 0.3,
                        ),
                        Text(
                          'Bridging the gap between the student community and industry.',
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 18),
                        )
                      ],
                    ),
                  ),
                  Container(
                    child: Column(
                      children: <Widget>[
                        Image.asset(
                          'assets/images/Hardware_vector.png',
                          height: size.height * 0.3,
                        ),
                        Text(
                          'One-stop for mastering the hardware skills!',
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 18),
                        )
                      ],
                    ),
                  ),
                  Container(
                    child: Column(
                      children: <Widget>[
                        Image.asset(
                          'assets/images/Software_vector.png',
                          height: size.height * 0.3,
                        ),
                        Text(
                          'Learn and Master the best software technologies effortlessly!',
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 18),
                        )
                      ],
                    ),
                  ),
                  Container(
                    child: Column(
                      children: <Widget>[
                        Image.asset(
                          'assets/images/Initiatives_vector.png',
                          height: size.height * 0.3,
                        ),
                        Text(
                          'The best initiatives and events to ease your learning experience.',
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 18),
                        )
                      ],
                    ),
                  ),
                ],
                options: CarouselOptions(
                  height: size.height * 0.5,
                  enlargeCenterPage: true,
                  autoPlay: true,
                  // aspectRatio: 16 / 9,
                  autoPlayCurve: Curves.fastOutSlowIn,
                  enableInfiniteScroll: true,
                  autoPlayAnimationDuration: Duration(milliseconds: 800),
                  viewportFraction: 0.9,
                ),
              ),
            ),
            Positioned(
              top: size.height * 0.67,
              child: Text(
                'Welcome to Innsaei',
                style: TextStyle(
                  fontSize: 30,
                  color: Color(0xFF00467f),
                ),
                textAlign: TextAlign.center,
              ),
            ),
            Positioned(
              top: size.height * 0.73,
              child: Container(
                margin: EdgeInsets.only(top: 5),
                child: Text(
                  'Dive into the world of technology',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0xFF8297A8),
                    fontSize: 15,
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: size.height * 0.03,
              child: Row(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.fromLTRB(20, 20, 20, 20),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Color(0xFF00467F),
                        padding: EdgeInsets.fromLTRB(20, 26.5, 20, 26.5),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(3.0),
                        ),
                        elevation: 0,
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          PageRouteBuilder(
                              pageBuilder: (_, a, b) => email_members(),
                              transitionDuration: Duration(seconds: 2),
                              transitionsBuilder: (_, a, __, c) =>
                                  FadeTransition(
                                    opacity: a,
                                    child: c,
                                  )),
                        );
                      },
                      child: Text(
                        'Members',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(20, 20, 20, 20),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.white,
                        padding: EdgeInsets.fromLTRB(20, 13, 20, 13),
                        side: BorderSide(
                          width: 3,
                          color: Color(0xFF00467F),
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(3.0),
                        ),
                        elevation: 0,
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          PageRouteBuilder(
                              pageBuilder: (_, a, b) => newuser(),
                              transitionDuration: Duration(seconds: 2),
                              transitionsBuilder: (_, a, __, c) =>
                                  FadeTransition(
                                    opacity: a,
                                    child: c,
                                  )),
                        );
                      },
                      child: Text(
                        'Non\nMembers',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class User {
  final String username;
  final String password;
  final String access;

  User({required this.username, required this.password, required this.access});

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      username: json['username'],
      password: json['password'],
      access: json['access'],
    );
  }
}
