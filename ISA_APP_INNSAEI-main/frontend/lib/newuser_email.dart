import 'package:flutter/material.dart';
import 'package:isa/main_newuser.dart';
import 'email_n_members.dart';

import 'dart:convert';
import 'dart:async';
import 'package:http/http.dart' as http;

void main() => runApp(const newuser_email());

class newuser_email extends StatelessWidget {
  const newuser_email({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: 'Voces',
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool isLoading = false;
  var status = '';
  Future<String> registerNonmember(
      String username, String firstName, String lastName, String email) async {
    final response = await http.post(
      Uri.parse("http://10.0.2.2:8000/app/api/users/RegistrationNONMEMBERS/"),
      // "http://127.0.0.1:8000/app/api/users/login/"),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
        'Authorization':
            'Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNjg4ODI0NTQzLCJpYXQiOjE2ODEwNDg1NDMsImp0aSI6IjE1YmY3NWZiZTBkMjQ2Y2E5N2EzZDA2NGFmNWMyNmYwIiwidXNlcl9pZCI6MX0.6IrE3_UbcqOPFE2fX-Vx3t-koyczHMo4DPLIZXY_BHM',
      },
      body: jsonEncode(<String, String>{
        'username': username,
        'first_name': firstName,
        'last_name': lastName,
        'email': email
      }),
    );

    if (response.statusCode == 200 ||
        response.statusCode == 201 ||
        response.statusCode == 202 ||
        response.statusCode == 203 ||
        response.statusCode == 204) {
      setState(() {
        isLoading = true;
      });
      // If the server did return a 201 CREATED response,
      // then parse the JSON.
      print('Non member addded');
      print('Response ye aaya - ' + response.body);

      // var i = 300;
      // String access = '';
      // for (i = 253; i <= 480; i++) {
      //   access = access + response.body[i];
      // }
      // ;
      // print(access);
      // email_members(access);
      var jsonData = jsonDecode(response.body); // trial
      return response.body;
      // return User.fromJson(jsonDecode(response.body));
    } else {
      print(response.statusCode);
      // If the server did not return a 201 CREATED response,
      // then throw an exception.
      print(response.body);
      print('errorrrrr in non member registration');

      throw Exception('Failed to register non member');
    }
  }

  var finalText = "";
  final email_n = TextEditingController();

  @override
  Widget build(BuildContext context) => GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: Scaffold(
          backgroundColor: const Color(0xFFFFFFFF),
          body: SingleChildScrollView(
            child: SizedBox(
              height: MediaQuery.of(context).size.height,
              width: double.infinity,
              child: Stack(
                alignment: Alignment.center,
                children: <Widget>[
                  // FIRST GIF PAGE KA
                  Positioned(
                    top: MediaQuery.of(context).size.height * 0.1,
                    child: Image.asset(
                      'assets/images/newuser_email.png',
                      width: MediaQuery.of(context).size.width * 1,
                    ),
                  ),

                  // Text field - EMAIL KA
                  Positioned(
                    top: MediaQuery.of(context).size.height * 0.52,
                    child: Container(
                      margin: const EdgeInsets.only(top: 30),
                      padding: const EdgeInsets.fromLTRB(20, 5, 20, 0),
                      width: MediaQuery.of(context).size.width * 1,
                      decoration: const BoxDecoration(
                          // border: Border.all(),
                          ),
                      child: TextFormField(
                        controller: email_n,
                        keyboardType: TextInputType.text,
                        // onChanged: (val) {
                        //   // print(val);
                        // },
                        decoration: const InputDecoration(
                          // enabledBorder: UnderlineInputBorder(
                          //   borderSide: BorderSide(color: Colors.black),
                          // ),
                          labelText: 'Email',
                          suffixText: '@ves.ac.in',
                          // var asli_email = email_n.text() + 'ves.ac.in'
                          labelStyle: TextStyle(
                            fontFamily: 'Voces',
                            fontSize: 18,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ),
                  ),
                  // PROCEED BUTTON
                  Positioned(
                    top: MediaQuery.of(context).size.height * 0.73,
                    child: isLoading
                        ? const Center(
                            child: CircularProgressIndicator(),
                          )
                        : ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: const Color(0xFF00467F),
                              padding: const EdgeInsets.symmetric(
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
                              try {
                                var res = await registerNonmember(
                                    email_n.text + '@ves.ac.in',
                                    'Dhruvisha',
                                    'Mondhe',
                                    email_n.text + '@ves.ac.in');
                                var jsonData = jsonDecode(res);

                                var status = '200';
                                print(email_n.text + '@ves.ac.in');
                                print(jsonData);

                                const snackBar = SnackBar(
                                  content: Text(
                                    'Registered Successfully! You can login now! Redirecting ....',
                                    style: TextStyle(
                                      fontSize: 18,
                                      color: Colors.green,
                                      fontFamily: 'Ubuntu',
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                );
                                ScaffoldMessenger.of(context)
                                    .showSnackBar(snackBar);
                                setState(() {
                                  isLoading = false;
                                });

                                Future.delayed(const Duration(seconds: 1), () {
                                  Navigator.push(
                                    context,
                                    PageRouteBuilder(
                                        pageBuilder: (_, a, b) =>
                                            const newuser(),
                                        transitionDuration:
                                            const Duration(seconds: 1),
                                        transitionsBuilder: (_, a, __, c) =>
                                            FadeTransition(
                                              opacity: a,
                                              child: c,
                                            )),
                                  );
                                });

                                print('End of try');
                              } catch (e) {
                                print('error occured in status 500');
                                const snackBar = SnackBar(
                                  content: Text(
                                    'Sorry! Error occured!',
                                    style: TextStyle(
                                      fontSize: 18,
                                      color: Colors.red,
                                      fontFamily: 'Ubuntu',
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                );
                                ScaffoldMessenger.of(context)
                                    .showSnackBar(snackBar);

                                setState(() {
                                  isLoading = false;
                                });
                                print('Uh oh catch me aa gaye');
                              }
                              setState(() {
                                // isLoading = true;
                              });
                              print('status' + status);
                              if (status == '200') {
                              } else {}

                              print(email_n.text + '@ves.ac.in');
                            },
                            child: const Text(
                              'Proceed',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                              ),
                            ),
                          ),
                  ),
                  //  FOR ALREADY REGISTERED
                  Positioned(
                    top: MediaQuery.of(context).size.height * 0.83,
                    child: TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const email_n_members()),
                        );
                      },
                      child: RichText(
                        text: const TextSpan(
                          text: ' Already registered?',
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
