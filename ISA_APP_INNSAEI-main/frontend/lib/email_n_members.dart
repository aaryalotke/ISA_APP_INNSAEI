import 'package:flutter/material.dart';
import 'package:isa/email_members.dart';
import 'otp_n_members.dart';
import 'dart:convert';
import 'dart:async';
import 'package:http/http.dart' as http;

void main() => runApp(const email_n_members());

class email_n_members extends StatelessWidget {
  const email_n_members({Key? key}) : super(key: key);

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
  final email_n = TextEditingController();

  bool isLoading = false;
  Future<String> sendEmailNM(String username, String password) async {
    final response = await http.post(
      Uri.parse("http://10.0.2.2:8000/app/api/users/loginNONMEMBERS/"),
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
                      'assets/images/Email_nonmemberspage.gif',
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
                          labelStyle: TextStyle(
                            fontFamily: 'Voces',
                            fontSize: 18,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ),
                  ),
                  // ENTER BUTTON
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
                                var res = await sendEmailNM(
                                    email_n.text + '@ves.ac.in',
                                    'innsaei'); //json data for response
                                var jsonData = jsonDecode(res); //in json form
                                print(email_n.text + '@ves.ac.in');
                                print(
                                    'Ye le access token ' + jsonData["access"]);

                                Navigator.push(
                                  context,
                                  PageRouteBuilder(
                                      pageBuilder: (_, a, b) => otp_n_members(
                                          jsonData["access"],
                                          jsonData["username"]),
                                      transitionDuration:
                                          const Duration(seconds: 1),
                                      transitionsBuilder: (_, a, __, c) =>
                                          FadeTransition(
                                            opacity: a,
                                            child: c,
                                          )),
                                );

                                print('End of try');
                              } catch (e) {
                                print('error occured in status 500');
                                const snackBar = SnackBar(
                                  content: Text(
                                    'Sorry! There was an issue',
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
                              print(email_n.text + '@ves.ac.in');
                            },
                            child: const Text(
                              'Enter',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                              ),
                            ),
                          ),
                  ),
                  // FOR NOT A MEMBER
                  Positioned(
                    top: MediaQuery.of(context).size.height * 0.83,
                    child: TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => email_members()),
                        );
                      },
                      child: RichText(
                        text: const TextSpan(
                          text: ' Are you a member?',
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
