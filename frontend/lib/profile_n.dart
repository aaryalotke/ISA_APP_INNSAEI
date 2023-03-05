// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, sized_box_for_whitespace

import 'package:flutter/material.dart';

class profile_n_members extends StatelessWidget {
  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: 'Voces',
      ),
      home: profile_n(),
    );
  }
}

class profile_n extends StatefulWidget {
  @override
  State<profile_n> createState() => _profile_nState();
}

class _profile_nState extends State<profile_n> {
  @override
  Widget build(BuildContext context) {
    // Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: MediaQuery.of(context).size.height * 0.999,
        child: Stack(
          clipBehavior: Clip.antiAlias,
          alignment: Alignment.center,
          children: <Widget>[
            // Upar ka vector image
            Positioned(
              top: MediaQuery.of(context).size.height * 0.05,
              child: Image.asset(
                'assets/images/NProfile.png',
                width: MediaQuery.of(context).size.width * 0.9,
              ),
            ),

            //  bande ka naam
            Positioned(
              top: MediaQuery.of(context).size.height * 0.4,
              width: MediaQuery.of(context).size.width * 0.95,
              child: Container(
                padding: EdgeInsets.all(40),
                height: 120,
                width: double.infinity,
                child: Center(
                  child: Text(
                    'Dhruvisha Mondhe',
                    style: TextStyle(
                      fontFamily: 'Voces',
                      fontSize: 30,
                    ),
                  ),
                ),
              ),
            ),

            //Sub heading for email
            Positioned(
              top: MediaQuery.of(context).size.height * 0.5,
              width: MediaQuery.of(context).size.width * 0.95,
              child: Container(
                padding: EdgeInsets.all(15),
                height: 120,
                width: MediaQuery.of(context).size.width * 0.95,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      'Email',
                      style: TextStyle(
                          fontFamily: 'Voces',
                          color: Color(0xFF8297A8),
                          fontSize: 25),
                    ),
                  ],
                ),
              ),
            ),

            // actual bande ka email ID
            Positioned(
              top: MediaQuery.of(context).size.height * 0.55,
              width: MediaQuery.of(context).size.width * 0.95,
              child: Container(
                padding: EdgeInsets.all(15),
                height: 120,
                width: MediaQuery.of(context).size.width * 0.95,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      '2019dhruvisha.mondhe@ves.ac.in',
                      maxLines: null,
                      softWrap: true,
                      style: TextStyle(
                          fontFamily: 'Voces',
                          color: Colors.black,
                          fontSize: 20),
                    ),
                    Icon(Icons.email_outlined, size: 35)
                  ],
                ),
              ),
            ),

            // bande ka phone
            Positioned(
              top: MediaQuery.of(context).size.height * 0.65,
              width: MediaQuery.of(context).size.width * 0.95,
              child: Container(
                padding: EdgeInsets.all(15),
                height: 120,
                width: MediaQuery.of(context).size.width * 0.95,
                child: Row(
                  children: <Widget>[
                    Text(
                      'Phone',
                      style: TextStyle(
                          fontFamily: 'Voces',
                          color: Color(0xFF8297A8),
                          fontSize: 25),
                    )
                  ],
                ),
              ),
            ),
            Positioned(
              top: MediaQuery.of(context).size.height * 0.70,
              width: MediaQuery.of(context).size.width * 0.95,
              child: Container(
                padding: EdgeInsets.all(15),
                height: 120,
                width: MediaQuery.of(context).size.width * 0.95,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      '7977946897',
                      style: TextStyle(
                          fontFamily: 'Voces',
                          color: Colors.black,
                          fontSize: 20),
                    ),
                    Icon(Icons.call_outlined, size: 35),
                  ],
                ),
              ),
            ),
            Positioned(
              top: MediaQuery.of(context).size.height * 0.85,
              width: MediaQuery.of(context).size.width * 0.95,
              child: Container(
                padding: EdgeInsets.all(40),
                height: 120,
                width: MediaQuery.of(context).size.width * 0.95,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    // text: Text(),
                    primary: Color(0xFF00467F),
                    padding: EdgeInsets.symmetric(vertical: 10),
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(3.0),
                    ),
                  ),
                  onPressed: () {
                    print('Pressed');
                  },
                  child: Text(
                    'Here! Your QR code',
                    style: TextStyle(
                      fontSize: 17,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
