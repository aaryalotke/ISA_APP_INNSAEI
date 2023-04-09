import 'package:flutter/material.dart';
import 'email_n_members.dart';
import 'otp_n_members.dart';
import 'newuser_mobile.dart';

void main() => runApp(newuser_email());

class newuser_email extends StatelessWidget {
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
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var finalText = "";
  final email_n = TextEditingController();

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
                      decoration: BoxDecoration(
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
                      onPressed: () {
                        Navigator.push(
                          context,
                          PageRouteBuilder(
                              pageBuilder: (_, a, b) => newuser_mobile(),
                              transitionDuration: Duration(seconds: 2),
                              transitionsBuilder: (_, a, __, c) =>
                                  FadeTransition(
                                    opacity: a,
                                    child: c,
                                  )),
                        );
                        print(email_n.text + '@ves.ac.in');
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
                  //  FOR ALREADY REGISTERED
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
