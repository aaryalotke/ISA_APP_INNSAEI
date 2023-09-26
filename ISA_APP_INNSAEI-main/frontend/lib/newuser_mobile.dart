// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
// import 'home.dart';

// import 'main.dart';
// import 'email_members.dart';

class newuser_mobile extends StatefulWidget {
  final String email_n;
  const newuser_mobile(this.email_n, {Key? key}) : super(key: key);

  @override
  State<newuser_mobile> createState() => _newuser_mobileState();
}

class _newuser_mobileState extends State<newuser_mobile> {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: 'Voces',
      ),
      home: MyHomePage(widget.email_n),
    );
  }
}

class MyHomePage extends StatefulWidget {
  final String email_n;
  const MyHomePage(this.email_n, {Key? key}) : super(key: key);

  // String titleInput;
  // String amountInput;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final mobile = TextEditingController();
  @override
  Widget build(BuildContext context) => GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: Scaffold(
          backgroundColor: Color(0xFFFFFFFF),
          body: SingleChildScrollView(
            child: SizedBox(
              height: MediaQuery.of(context).size.height,
              width: double.infinity,
              child: Stack(
                alignment: Alignment.center,
                children: <Widget>[
                  // FIRST GIF PAGE KA
                  Positioned(
                    top: MediaQuery.of(context).size.height * 0.13,
                    child: Image.asset(
                      'assets/images/newuser_mobile.png',
                      width: MediaQuery.of(context).size.width * 0.9,
                    ),
                  ),
                  Positioned(
                    top: MediaQuery.of(context).size.height * 0.56,
                    child: Text(
                      'Please enter your mobile number',
                      style: TextStyle(
                        fontSize: 23,
                        color: Colors.black,
                        fontFamily: 'Ubuntu',
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  // Text field - OTP KA
                  Positioned(
                    top: MediaQuery.of(context).size.height * 0.61,
                    child: Container(
                      margin: const EdgeInsets.only(top: 30),
                      padding: const EdgeInsets.fromLTRB(20, 5, 20, 0),
                      width: MediaQuery.of(context).size.width * 1,
                      decoration: BoxDecoration(
                          // border: Border.all(),
                          ),
                      child: TextFormField(
                        controller: mobile,
                        keyboardType: TextInputType.phone,
                        decoration: const InputDecoration(
                          labelText: 'Mobile Number',
                          labelStyle: TextStyle(
                            fontFamily: 'Voces',
                            fontSize: 18,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ),
                  ),
                  // DONE BUTTON
                  Positioned(
                    top: MediaQuery.of(context).size.height * 0.82,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xFF00467F),
                        padding:
                            EdgeInsets.symmetric(horizontal: 140, vertical: 10),
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(3.0),
                        ),
                      ),
                      onPressed: () {
                        print(widget.email_n);
                        print(mobile.text);

                        
                        // Navigator.push(
                        //   context,
                        //   PageRouteBuilder(
                        //       pageBuilder: (_, a, b) => newuser(),
                        //       transitionDuration: Duration(seconds: 2),
                        //       transitionsBuilder: (_, a, __, c) =>
                        //           FadeTransition(
                        //             opacity: a,
                        //             child: c,
                        //           )),
                        // );
                      },
                      child: Text(
                        '   Done   ',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                        ),
                      ),
                    ),
                  ),

                  // UPAR KA ANIMATION
                  Positioned(
                    top: 0,
                    right: 0,
                    child: Image.asset(
                      'assets/images/Surfer-unscreen.gif',
                      width: MediaQuery.of(context).size.width * 0.45,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      );
}
