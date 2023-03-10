// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, prefer_typing_uninitialized_variables

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import 'email_members.dart';

import 'otp_n_members.dart';
import 'email_members.dart';
import 'email_n_members.dart';
import 'otp_members.dart';
// ignore: duplicate_import
import '../models/users.dart';
import 'trial.dart';
import 'trialEmail.dart';

void main() {
  runApp(const nm_choose());
}

class nm_choose extends StatelessWidget {
  const nm_choose({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: 'Voces',
      ),
      home: nonMembers_choose(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class nonMembers_choose extends StatefulWidget {
  @override
  State<nonMembers_choose> createState() => _nonMembers_chooseState();
}

class _nonMembers_chooseState extends State<nonMembers_choose> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color(0xFFFFFFFF),
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: double.infinity,
          child: Stack(
            alignment: Alignment.center,
            children: <Widget>[
              // FIRST GIF PAGE KA
              Positioned(
                top: MediaQuery.of(context).size.height * 0.1,
                child: Image.asset(
                  'assets/images/Email_nonmemberspage.gif',
                  width: MediaQuery.of(context).size.width * 1,
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
                            MaterialPageRoute(
                                builder: (context) => email_members()),
                          );
                        },
                        child: Text(
                          'Register',
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
                            MaterialPageRoute(
                                builder: (context) => email_members()),
                          );
                        },
                        child: Text(
                          'Login',
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
      ),
    );
    // TODO: implement build
    throw UnimplementedError();
  }
}
