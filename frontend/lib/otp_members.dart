// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
// import 'home.dart';
import 'dart:convert';
import 'dart:async';
import 'package:http/http.dart' as http;
import 'package:isa/models/users.dart';

import 'home_new.dart';
import 'otp_n_members.dart';
import 'main.dart';
import 'email_members.dart';
import 'email_n_members.dart';

// import 'user1.dart';

// Future<String> verifyOTP(
//     String otp, String email, String password, String access) async {
//   final response = await http.post(
//     Uri.parse('http://127.0.0.1:8000/app/api/users/verifyotp/'),
//     headers: <String, String>{
//       'Content-Type': 'application/json; charset=UTF-8',
//       'Authorization': access,
//     },
//     body: jsonEncode(<String, String>{
//       'otp': otp,
//       'username': email,
//       'password': password,
//       'Authorization': access
//     }),
//   );

//   if (response.statusCode == 200 ||
//       response.statusCode == 201 ||
//       response.statusCode == 202 ||
//       response.statusCode == 203 ||
//       response.statusCode == 204) {
//     // If the server did return a 201 CREATED response,
//     // then parse the JSON.
//     print('OTP verify hua?');
//     return OTP_F.fromJson(jsonDecode(response.body));
//   } else {
//     // If the server did not return a 201 CREATED response,
//     // then throw an exception.
//     print('errorrrrr');
//     throw Exception('Failed to verify OTP.');
//   }
// }

class OTP_F {
  final String otp;
  final String username;
  final String password;

  OTP_F({required this.otp, required this.username, required this.password});

  factory OTP_F.fromJson(Map<String, dynamic> json) {
    return OTP_F(
      otp: json['otp'],
      username: json['username'],
      password: json['password'],
    );
  }
}

class otp_members extends StatefulWidget {
  final String email;
  final String access;

  otp_members(this.email, this.access);
  String get emailID {
    return email;
  }

  @override
  // ignore: no_logic_in_create_state
  State<otp_members> createState() => _MyHomePageState_OTP();
}

class _MyHomePageState_OTP extends State<otp_members> {
  Future<String> verifyOTP(
      String otp, String access, String email, String password) async {
    final response = await http.post(
      //for chrome
      Uri.parse('http://127.0.0.1:8000/app/api/users/verifyotp/'),
      //for mobile
      //Uri.parse('http://10.0.2.2:8000/app/api/users/verifyotp/'),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
        'Authorization': access,
      },
      body: jsonEncode(<String, String>{
        'otp': otp,
        'username': email,
        'password': password,
        'Authorization': access
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
      return response.body;
    } else {
      // If the server did not return a 201 CREATED response,
      // then throw an exception.
      print('errorrrrr');
      throw Exception('Failed to verify OTP.');
    }
  }

  Future<OTP_F>? _otpEntered;
  final otp_m = TextEditingController();

  @override
  Widget build(BuildContext context) => GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: Scaffold(
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
                      'assets/images/otp_members.gif',
                      width: MediaQuery.of(context).size.width * 0.9,
                    ),
                  ),
                  Positioned(
                    top: MediaQuery.of(context).size.height * 0.55,
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
                    top: MediaQuery.of(context).size.height * 0.60,
                    child: Container(
                      margin: const EdgeInsets.only(top: 30),
                      padding: const EdgeInsets.fromLTRB(20, 5, 20, 0),
                      width: MediaQuery.of(context).size.width * 1,
                      decoration: BoxDecoration(
                          // border: Border.all(),
                          ),
                      child: TextFormField(
                        maxLength: 4,
                        controller: otp_m,
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
                        primary: Color(0xFF00467F),
                        padding:
                            EdgeInsets.symmetric(horizontal: 140, vertical: 10),
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(3.0),
                        ),
                      ),
                      onPressed: () async {
                        // setState(() {
                        //   var otp_e = otp_m.text;
                        //   print(otp_m.value);
                        //   _otpEntered = verifyOTP(otp_e, widget.email,
                        //       'innsaei', 'Bearer ' + widget.access);
                        //   print('Email ka value - ' + widget.email);
                        //   print(' Access ka value -  ' + widget.access);
                        //   // controller h ye
                        // });
                        var access = 'Bearer ' + widget.access;
                        var res = await verifyOTP(
                            otp_m.text, access, widget.email, 'innsaei');
                        var jsonData = jsonDecode(res);
                        if (jsonData["status"] == 1) {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => homePage()),
                          );
                          print('OTP sent to member - ' + otp_m.text);
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
                          ScaffoldMessenger.of(context).showSnackBar(snackBar);
                        }
                        // Navigator.push(
                        //   context,
                        //   MaterialPageRoute(builder: (context) => Home()),
                        // );
                        // print('OTP sent to member - ' + otp_m.text);
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
                  Positioned(
                    top: MediaQuery.of(context).size.height * 0.90,
                    child: TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => email_n_members()),
                        );
                      },
                      child: Text(
                        'Resend OTP',
                        style: TextStyle(
                          color: Color(0xFF00467F),
                          fontSize: 17,
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
