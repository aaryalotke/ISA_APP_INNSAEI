// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, use_key_in_widget_constructors

import 'dart:convert';
import 'dart:async';
// import 'dart:html';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import 'otp_n_members.dart';
import 'main.dart';
import 'email_members.dart';
import 'email_n_members.dart';
import 'package:isa/otp_members.dart';
import 'package:isa/main.dart';
// import 'package:spinner/spinner.dart';

// Future<User> sendEmail(String username, String password) async {
//   final response = await http.post(
//     Uri.parse('http://127.0.0.1:8000/app/api/users/login/'),
//     headers: <String, String>{
//       'Content-Type': 'application/json; charset=UTF-8',
//     },
//     body: jsonEncode(
//         <String, String>{'username': username, 'password': password}),
//   );

//   if (response.statusCode == 200) {
//     // If the server did return a 201 CREATED response,
//     // then parse the JSON.
//     print('OTP gaya!');
//     print('Response ye aaya - ' + response.body);
//     print('new time\n');
//     // var i = 300;
//     // String access = '';
//     // for (i = 253; i <= 480; i++) {
//     //   access = access + response.body[i];
//     // }
//     // ;
//     // print(access);
//     // email_members(access);
//     return User.fromJson(jsonDecode(response.body));
//   } else {
//     // If the server did not return a 201 CREATED response,
//     // then throw an exception.
//     print('errorrrrr');
//     throw Exception('Failed to send email.');
//   }
// }

class email_members extends StatefulWidget {
  // email_members({Key? key, required this.access}) : super(key: key);

  // String access;

  // This widget is the root of your application.
  // String access;
  // String access;
  // email_members(this.access);
  @override
  // String toString() {
  //   return "email_members [isa=${this.isa},access=${this.access}]";
  // }
  State<email_members> createState() => _email_membersState();
}

class _email_membersState extends State<email_members> {
  bool isLoading = false;
  Future<String> sendEmail(String username, String password) async {
    final response = await http.post(
      Uri.parse("http://10.0.2.2:8000/app/api/users/login/"),
      // "http://127.0.0.1:8000/app/api/users/login/"),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(
          <String, String>{'username': username, 'password': password}),
    );

    if (response.statusCode == 200) {
      setState(() {
        isLoading = true;
      });
      // If the server did return a 201 CREATED response,
      // then parse the JSON.
      print('OTP gaya!');
      print('Response ye aaya - ' + response.body);
      print('new time\n');
      // var i = 300;
      // String access = '';
      // for (i = 253; i <= 480; i++) {
      //   access = access + response.body[i];
      // }
      // ;
      // print(access);
      // email_members(access);
      var jsonData = jsonDecode(response.body); // trial
      print(jsonData["access"]);
      String access = jsonData["access"];
      String email = jsonData["username"];

      return response.body;
      // return User.fromJson(jsonDecode(response.body));
    } else {
      // If the server did not return a 201 CREATED response,
      // then throw an exception.
      print(response.body);
      print('errorrrrr');
      throw Exception('Failed to send email.');
    }
  }

  //   with TickerProviderStateMixin {
  // late AnimationController controller;
  // // late String access1;
  // @override
  // void initState() {
  //   // access1 = widget.access;
  //   controller = AnimationController(
  //     vsync: this,
  //     duration: const Duration(seconds: 5),
  //   )..addListener(() {
  //       setState(() {});
  //     });
  //   controller.repeat(reverse: true);
  //   super.initState();
  // }
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       theme: ThemeData(
//         fontFamily: 'Voces',
//       ),
//       home: MyHomePage(),
//     );
//   }
// }

// class MyHomePage extends StatefulWidget {
//   // String titleInput;
//   // String amountInput;
//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
  Future<User>? _futureEmail;
  final email = TextEditingController();

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
                  Positioned(
                    top: MediaQuery.of(context).size.height * 0.1,
                    child: Image.asset(
                      'assets/images/Email_memberspage.gif',
                      width: MediaQuery.of(context).size.width * 1,
                    ),
                  ),

                  //  Text field
                  Positioned(
                    top: MediaQuery.of(context).size.height * 0.52,
                    child: Container(
                      margin: const EdgeInsets.only(top: 30),
                      padding: const EdgeInsets.fromLTRB(20, 5, 20, 0),
                      width: MediaQuery.of(context).size.width * 1,
                      decoration: BoxDecoration(
                          // border: Border.all(),
                          ),
                      child: TextFormField(
                        controller: email,
                        keyboardType: TextInputType.text,
                        onChanged: (val) {
                          // print(val);
                        },
                        decoration: const InputDecoration(
                          // enabledBorder: UnderlineInputBorder(
                          //   borderSide: BorderSide(color: Colors.black),
                          // ),
                          labelText: 'Email',
                          suffixText: '@ves.ac.in',
                          labelStyle: TextStyle(
                            fontFamily: 'Voces',
                            fontSize: 18,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    top: MediaQuery.of(context).size.height * 0.73,
                    child: isLoading
                        ? Center(
                            child: CircularProgressIndicator(),
                          )
                        : ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              primary: Color(0xFF00467F),
                              padding: EdgeInsets.symmetric(
                                  horizontal: 140, vertical: 10),
                              elevation: 0,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(3.0),
                              ),
                            ),
                            onPressed: () async {
                              setState(() {
                                isLoading = true;
                              });
                              //sendEmail function call kiya jo OTP bhejta h ! usko decode kiya , uska values otp page ko bheja
                              // setState(() {
                              //   var asli_email = email.text + '@ves.ac.in';
                              //   _futureEmail = sendEmail(email.text, 'innsaei');

                              //   //controller h ye
                              // });
                              // print(_futureEmail);

                              // ignore: avoid_print
                              // if (widget.access != 'Hi') {
                              try {
                                var res = await sendEmail(email.text,
                                    'innsaei'); //json data for response
                                var jsonData = jsonDecode(res); //in json form
                                print(email.text + '@ves.ac.in');
                                print('Ye le access token ' + jsonData["access"]);
                                Navigator.push(
                                  //sending to OTP page
                                  context,
                                  PageRouteBuilder(
                                      pageBuilder: (_, a, b) => otp_members(
                                          jsonData["username"],
                                          jsonData["access"]),
                                      transitionDuration: Duration(seconds: 2),
                                      transitionsBuilder: (_, a, __, c) =>
                                          FadeTransition(
                                            opacity: a,
                                            child: c,
                                          )),
                                );
                                print(email.text + '@ves.ac.in');
                                print('Ye le access token ' + jsonData["access"]);
                              } catch(e) {
                                ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                                  content: Text(e.toString()),
                                  backgroundColor: Colors.red,
                                  elevation: 10,
                                  behavior: SnackBarBehavior.floating,
                                  margin: const EdgeInsets.all(5),
                                ));
                              }
                              // } else {
                              //   setState(() {
                              //     CircularProgressIndicator(
                              //       value: controller.value,
                              //       semanticsLabel: 'Linear progress indicator',
                              //     );
                              //     widget.access = widget.access;
                              //   });

                              //   // Spinner(
                              //   //   animationSpeed: 40,
                              //   // );
                              // }
                            },
                            child: Text(
                              'Enter',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                              ),
                            ),
                          ),
                  ),
                  Positioned(
                    top: MediaQuery.of(context).size.height * 0.83,
                    child: TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => email_n_members()),
                        );
                      },
                      child: RichText(
                        text: const TextSpan(
                          text: ' Not a Member?',
                          style: TextStyle(
                            color: Colors.black,
                            fontFamily: 'Voces',
                            // fontWeight: FontWeight.normal,
                            fontSize: 17,
                          ),
                          children: [
                            TextSpan(
                              text: ' Click here ',
                              style: TextStyle(
                                color: Color(0xFF00467F),
                                fontFamily: 'Voces',
                                fontSize: 17,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
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

class _MyHomePageState_OTP {}
