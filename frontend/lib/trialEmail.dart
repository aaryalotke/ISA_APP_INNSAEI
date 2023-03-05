//Importing all the necessary packages
// ignore_for_file: avoid_print, camel_case_types, use_key_in_widget_constructors, unused_import, unused_local_variable

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

class emailMembers extends StatefulWidget {
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
  State<emailMembers> createState() => _emailMembersState();
}

class _emailMembersState extends State<emailMembers> {
  Future<String> sendEmail(String username, String password) async {
    final response = await http.post(
      Uri.parse('http://127.0.0.1:8000/app/api/users/login/'),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(
          <String, String>{'username': username, 'password': password}),
    );

    if (response.statusCode == 200) {
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
      var jsonData = jsonDecode(response.body);
      print(jsonData["access"]);
      String access = jsonData["access"];
      String email = jsonData["username"];

      return response.body;
      // return User.fromJson(jsonDecode(response.body));
    } else {
      // If the server did not return a 201 CREATED response,
      // then throw an exception.
      print('errorrrrr');
      throw Exception('Failed to send email.');
    }
  }

  Future<User>? _futureEmail;
  final email = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Create Data Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Create Data Example'),
        ),
        body: Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                TextField(
                  controller: email,
                  decoration: const InputDecoration(hintText: 'Enter Title'),
                ),
                ElevatedButton(
                  onPressed: () async {
                    var res = await sendEmail(email.text, 'innsaei');
                    var jsonData = jsonDecode(res);

                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => otp_members(
                          jsonData["access"],
                          jsonData["username"],
                        ),
                      ),
                    );
                  },
                  child: const Text('Write'),
                ),
              ],
            )),
      ),
    );
  }

  //Column widget contains the form in which
// the entries are made to be   //Column widget contains the form in which
  Column buildColumn() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        TextField(
          controller: email,
          decoration: const InputDecoration(hintText: 'Enter Title'),
        ),
        ElevatedButton(
          onPressed: () {
            sendEmail(email.text, 'innsaei');
          },
          child: const Text('Write'),
        ),
      ],
    );
  }

  FutureBuilder<User> buildFutureBuilder() {
    return FutureBuilder<User>(
      future: _futureEmail,
      builder: (context, AsyncSnapshot snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Text('Loading');
        }
        if (snapshot.hasData) {
          return Text(snapshot.data);
        } else if (snapshot.hasError) {
          print(snapshot.data);
          print('error aaya');
          print(snapshot.data['access']);
          return Text('${snapshot.error}');
        }

        return const CircularProgressIndicator();
      },
    );
  }
}
