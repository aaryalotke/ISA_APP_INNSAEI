import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'dart:async';

import 'package:isa/home_new.dart';

// import 'home.dart';

// void main() {
//   // runApp(
//   //     MaterialApp(
//   //         debugShowCheckedModeBanner: false,
//   //       title: 'CONTACT US',
//   //       home: SIForm(),
//   //     )
//   // );
// }
class SIForm extends StatefulWidget {
  final String access;
  SIForm(this.access);
  @override
  State<StatefulWidget> createState() {
    return _SIFormState();
  }
}

class _SIFormState extends State<SIForm> {
  Future<String> sendFeedback(String name, String email, String phoneNumber,
      String message, String access) async {
    final response = await http.post(
      Uri.parse("http://127.0.0.1:8000/app/api/users/ContactUs/"),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
        'Authorization': access,
      },
      body: jsonEncode(<String, String>{
        'name': name,
        'email': email,
        'message': message,
        'phoneNumber': phoneNumber
      }),
    );
    if (response.statusCode == 200 || response.statusCode == 201) {
      print('feedback gaya');
      return response.body;
    } else {
      print('feedback nahi gaya');
      throw Exception('Failed to send feedback.');
    }
    // else {
    //                       final snackBar = SnackBar(
    //                         content: const Text(
    //                           'Feedback not sent',
    //                           style: TextStyle(
    //                             fontSize: 18,
    //                             color: Colors.red,
    //                             fontFamily: 'Ubuntu',
    //                           ),
    //                           textAlign: TextAlign.center,
    //                         ),
    //                         // action: SnackBarAction(
    //                         //   label: 'Try Again',
    //                         //   onPressed: () {
    //                         //     // Some code to undo the change.
    //                         //     // Navigator.push(
    //                         //     //   context,
    //                         //     //   MaterialPageRoute(
    //                         //     //       builder: (context) => new_main()),
    //                         //     // );
    //                         //   },
    //                         // ),
    //                       );
    //                       ScaffoldMessenger.of(context).showSnackBar(snackBar);
    //                     }
  }

  final _minimumPadding = 5.0;

  final name = TextEditingController();
  final email = TextEditingController();
  final message = TextEditingController();
  final phoneNumber = TextEditingController();

  @override
  Widget build(BuildContext context) => GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: AppBar(
              backgroundColor: Colors.white,
              elevation: 0,
              title: Text(
                'CONTACT US',
                style: TextStyle(
                    fontFamily: 'Ubuntu', fontSize: 20, color: Colors.black),
              ),
              centerTitle: true,
            ),
            body: SafeArea(
              child: SingleChildScrollView(
                child: Container(
                  width: double.infinity,
                  height: MediaQuery.of(context).size.height,
                  margin: EdgeInsets.all(_minimumPadding * 3),
                  child: Stack(
                    alignment: Alignment.center,
                    children: <Widget>[
                      Positioned(
                        top: MediaQuery.of(context).size.height * 0.008,
                        child: Container(
                          margin: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                          padding: EdgeInsets.fromLTRB(0, 5, 0, 5),
                          height: 290,
                          width: 290,
                          // child: Image.asset("assets/contact.png")
                          child: Image(
                            image: new AssetImage("assets/images/contact.png"),
                            fit: BoxFit.cover,
                            // alignment: FractionalOffset.topCenter,
                          ),
                        ),
                      ),
                      Positioned(
                        top: MediaQuery.of(context).size.height * 0.35,
                        child: Container(
                          width: MediaQuery.of(context).size.width,
                          margin: const EdgeInsets.only(top: 30),
                          padding: const EdgeInsets.fromLTRB(20, 5, 20, 0),
                          child: TextField(
                            controller: name,
                            decoration: InputDecoration(
                              labelText: 'Name',
                              labelStyle: TextStyle(
                                  color: Colors.black,
                                  fontFamily: 'Voces',
                                  fontSize: 15),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        top: MediaQuery.of(context).size.height * 0.42,
                        child: Container(
                          width: MediaQuery.of(context).size.width,
                          margin: const EdgeInsets.only(top: 30),
                          padding: const EdgeInsets.fromLTRB(20, 5, 20, 0),
                          child: TextField(
                            controller: email,
                            decoration: InputDecoration(
                              labelText: 'Email',
                              labelStyle: TextStyle(
                                  color: Colors.black,
                                  fontFamily: 'Voces',
                                  fontSize: 15),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        top: MediaQuery.of(context).size.height * 0.49,
                        child: Container(
                          width: MediaQuery.of(context).size.width,
                          margin: const EdgeInsets.only(top: 30),
                          padding: const EdgeInsets.fromLTRB(20, 5, 20, 0),
                          child: TextField(
                            controller: phoneNumber,
                            decoration: InputDecoration(
                              labelText: 'Phone Number',
                              labelStyle: TextStyle(
                                  color: Colors.black,
                                  fontFamily: 'Voces',
                                  fontSize: 15),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        top: MediaQuery.of(context).size.height * 0.56,
                        child: Container(
                          width: MediaQuery.of(context).size.width,
                          margin: const EdgeInsets.only(top: 30),
                          padding: const EdgeInsets.fromLTRB(20, 5, 20, 0),
                          child: TextField(
                            controller: message,
                            decoration: InputDecoration(
                              labelText: 'Message',
                              labelStyle: TextStyle(
                                  color: Colors.black,
                                  fontFamily: 'Voces',
                                  fontSize: 15),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        top: MediaQuery.of(context).size.height * 0.65,
                        child: Container(
                            width: MediaQuery.of(context).size.width,
                            margin: const EdgeInsets.only(top: 30),
                            padding: const EdgeInsets.fromLTRB(20, 5, 20, 0),
                            child: Row(
                              children: <Widget>[
                                Expanded(
                                    child: ElevatedButton(
                                  child: Text(
                                    'Submit',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 16),
                                  ),
                                  //color: const Color(0xff00467F),
                                  onPressed: () async {
                                    print(widget.access);
                                    print(name.text);
                                    print(email.text);
                                    print(phoneNumber.text);
                                    print(message.text);
                                    var res = await sendFeedback(
                                      name.text,
                                      email.text,
                                      phoneNumber.text,
                                      message.text,
                                      widget.access,
                                    );
                                    var jsonData = jsonDecode(res);
                                    var access = 'Bearer ' + widget.access;

                                    //snackbar
                                    if (jsonData["status"] == 1) {
                                      // Navigator.push(
                                      //   context,
                                      //   MaterialPageRoute(
                                      //       builder: (context) => homePage()),
                                      // );
                                      // print('OTP sent to member - ' + otp_m.text);
                                    } else {
                                      final snackBar = SnackBar(
                                        content: const Text(
                                          'Feedback not sent!',
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
                                    }
                                  },
                                ))
                              ],
                            )),
                      ),
                      Positioned(
                        top: MediaQuery.of(context).size.height * 0.73,
                        child: Container(
                          width: MediaQuery.of(context).size.width,
                          margin: const EdgeInsets.only(top: 30),
                          padding: const EdgeInsets.fromLTRB(20, 5, 20, 0),
                          child: Text('For any concern please contact:',
                              style: TextStyle(
                                  fontFamily: 'Voces',
                                  fontSize: 16,
                                  color: Colors.black),
                              textAlign: TextAlign.left),
                        ),
                      ),
                      Positioned(
                        top: MediaQuery.of(context).size.height * 0.77,
                        child: Container(
                          width: MediaQuery.of(context).size.width,
                          margin: const EdgeInsets.only(top: 30),
                          padding: const EdgeInsets.fromLTRB(20, 5, 20, 0),
                          child: Text('Hrutika Pakhale(President)',
                              style: TextStyle(
                                  fontFamily: 'Voces',
                                  fontSize: 16,
                                  color: Colors.black),
                              textAlign: TextAlign.left),
                        ),
                      ),
                      Positioned(
                        top: MediaQuery.of(context).size.height * 0.80,
                        child: Container(
                          width: MediaQuery.of(context).size.width,
                          margin: const EdgeInsets.only(top: 30),
                          padding: const EdgeInsets.fromLTRB(20, 5, 20, 0),
                          child: Text('9819587707',
                              style: TextStyle(
                                  fontFamily: 'Voces',
                                  fontSize: 15,
                                  color: Colors.black),
                              textAlign: TextAlign.left),
                        ),
                      ),
                      Positioned(
                        top: MediaQuery.of(context).size.height * 0.84,
                        child: Container(
                          width: MediaQuery.of(context).size.width,
                          margin: const EdgeInsets.only(top: 30),
                          padding: const EdgeInsets.fromLTRB(20, 5, 20, 0),
                          child: Text('Nidhi Mundhada(Vice President)',
                              style: TextStyle(
                                  fontFamily: 'Voces',
                                  fontSize: 16,
                                  color: Colors.black),
                              textAlign: TextAlign.left),
                        ),
                      ),
                      Positioned(
                        top: MediaQuery.of(context).size.height * 0.87,
                        child: Container(
                          width: MediaQuery.of(context).size.width,
                          margin: const EdgeInsets.only(top: 30),
                          padding: const EdgeInsets.fromLTRB(20, 5, 20, 0),
                          child: Text('8379926546',
                              style: TextStyle(
                                  fontFamily: 'Voces',
                                  fontSize: 15,
                                  color: Colors.black),
                              textAlign: TextAlign.left),
                        ),
                      ),
                      // Positioned(top: MediaQuery.of(context).size.height * 0.91,
                      //   child: Container(
                      //     width:MediaQuery.of(context).size.width,
                      //     margin: const EdgeInsets.only(top: 30),
                      //     padding: const EdgeInsets.fromLTRB(20, 5, 20, 0),
                      //     child:Text('Abhijeet Gaonkar(Sr. Treasurer)', style: TextStyle(fontFamily: 'Voces',fontSize: 16 ,color: Colors.black),textAlign: TextAlign.left),
                      //   ),),
                      // Positioned(top: MediaQuery.of(context).size.height * 0.94,
                      //   child: Container(
                      //     width:MediaQuery.of(context).size.width,
                      //     margin: const EdgeInsets.fromLTRB(40, 35, 0, 0),
                      //     //padding: const EdgeInsets.fromLTRB(20, 5, 20, 0),
                      //     child:Text('8369096455', style: TextStyle(fontFamily: 'Voces',fontSize: 15,color: Colors.black),textAlign: TextAlign.left),
                      //   ),),
                    ],
                  ),
                ),
              ),
            )),
      );
}

Widget getImageAsset() {
  AssetImage assetImage = AssetImage('assets/img.jpg');
  Image image = Image(
    image: assetImage,
    height: 300,
    width: 400,
    alignment: Alignment.topCenter,
  );
  return Container(
    child: image,
  );
}
