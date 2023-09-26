// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:isa/home_new.dart';
// import 'home.dart';

// import 'main.dart';
// import 'email_members.dart';
import 'dart:convert';
import 'dart:async';
import 'package:http/http.dart' as http;

class otp_n_members extends StatefulWidget {
  final String access;
  final String email;

  const otp_n_members(this.access, this.email, {Key? key}) : super(key: key);

  @override
  State<otp_n_members> createState() => _otp_n_membersState();
}

class _otp_n_membersState extends State<otp_n_members> {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: 'Voces',
      ),
      home: MyHomePage(widget.access, widget.email),
    );
  }
}

class MyHomePage extends StatefulWidget {
  bool isLoading = false;
  final String access;
  final String email;
  MyHomePage(this.access, this.email, {Key? key}) : super(key: key);
  // String titleInput;
  // String amountInput;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final otp_n = TextEditingController();
  bool isLoading = false;

  Future<String> verifyOTP(String otp, String access) async {
    final response = await http.post(
      //for chrome
      // Uri.parse('http://127.0.0.1:8000/app/api/users/verifyotp/'),
      //for mobile
      Uri.parse('http://10.0.2.2:8000/app/api/users/verifyotpNONMEMBERS/'),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
        'Authorization': access,
      },
      body: jsonEncode(<String, String>{
        'otp': otp,
      }),
    );

    if (response.statusCode == 200 ||
        response.statusCode == 201 ||
        response.statusCode == 202 ||
        response.statusCode == 203 ||
        response.statusCode == 204) {
      // If the server did return a 201 CREATED response,
      // then parse the JSON.
      print('OTP verify hua!');
      setState(() {
        isLoading = true;
      });
      return response.body;
    } else {
      // If the server did not return a 201 CREATED response,
      // then throw an exception.
      print('errorrrrr');
      throw Exception('Failed to verify OTP.');
    }
  }

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
                      'assets/images/OTP_nonmemberspage.GIF',
                      width: MediaQuery.of(context).size.width * 0.9,
                    ),
                  ),
                  Positioned(
                    top: MediaQuery.of(context).size.height * 0.56,
                    child: Text(
                      'Please enter the OTP\nsent to your Email ID',
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
                        maxLength: 4,
                        controller: otp_n,
                        keyboardType: TextInputType.text,
                        decoration: const InputDecoration(
                          labelText: 'OTP',
                          labelStyle: TextStyle(
                            fontFamily: 'Voces',
                            fontSize: 18,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ),
                  ),
                  // BUTTON
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
                      onPressed: () async {
                        setState(() {
                          isLoading = true;
                        });

                        try {
                          var access = 'Bearer ' + widget.access;
                          var res = await verifyOTP(otp_n.text, access);
                          var jsonData = jsonDecode(res);
                          print('End of try in otp nm');
                          if (jsonData["status"] == 1) {
                            Navigator.push(
                              context,
                              PageRouteBuilder(
                                  pageBuilder: (_, a, b) =>
                                      homePage(widget.access),
                                  transitionDuration: Duration(seconds: 1),
                                  transitionsBuilder: (_, a, __, c) =>
                                      FadeTransition(
                                        opacity: a,
                                        child: c,
                                      )),
                            );
                            print('OTP sent to member - ' + otp_n.text);
                          } else {
                            final snackBar = SnackBar(
                              content: const Text(
                                'Invalid OTP!',
                                style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.red,
                                  fontFamily: 'Ubuntu',
                                ),
                                textAlign: TextAlign.center,
                              ),
                              // action: SnackBarAction(
                              //   label: 'Try Again',
                              //   onPressed: () {
                              //     // Some code to undo the change.
                              //     // Navigator.push(
                              //     //   context,
                              //     //   MaterialPageRoute(
                              //     //       builder: (context) => new_main()),
                              //     // );
                              //   },
                              // ),
                            );
                            ScaffoldMessenger.of(context)
                                .showSnackBar(snackBar);
                          }
                        } catch (e) {
                          final snackBar = SnackBar(
                            content: const Text(
                              'Oops! Something went wrong!',
                              style: TextStyle(
                                fontSize: 18,
                                color: Colors.red,
                                fontFamily: 'Ubuntu',
                              ),
                              textAlign: TextAlign.center,
                            ),
                            // action: SnackBarAction(
                            //   label: 'Try Again',
                            //   onPressed: () {
                            //     // Some code to undo the change.
                            //     // Navigator.push(
                            //     //   context,
                            //     //   MaterialPageRoute(
                            //     //       builder: (context) => new_main()),
                            //     // );
                            //   },
                            // ),
                          );
                          ScaffoldMessenger.of(context).showSnackBar(snackBar);
                          print('Uh oh in catch block');
                        }
                        // Navigator.push(
                        //   context,
                        //   PageRouteBuilder(
                        //       pageBuilder: (_, a, b) => homePage(),
                        //       transitionDuration: Duration(seconds: 2),
                        //       transitionsBuilder: (_, a, __, c) =>
                        //           FadeTransition(
                        //             opacity: a,
                        //             child: c,
                        //           )),
                        // );
                        print('OTP sent to non member - ' + otp_n.text);
                      },
                      child: Text(
                        'Proceed',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                        ),
                      ),
                    ),
                  ),
                  // TEXT BUTTON FOR Resend OTP
                  // Positioned(
                  //   top: MediaQuery.of(context).size.height * 0.90,
                  //   child: TextButton(
                  //     onPressed: () {
                  //       Navigator.push(
                  //         context,
                  //         MaterialPageRoute(
                  //             builder: (context) => email_n_members()),
                  //       );
                  //     },
                  //     child: Text(
                  //       'Resend OTP',
                  //       style: TextStyle(
                  //         color: Color(0xFF00467F),
                  //         fontSize: 17,
                  //       ),
                  //     ),
                  //   ),
                  // ),
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
