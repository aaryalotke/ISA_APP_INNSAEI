import 'package:flutter/material.dart';
import 'DemoApp.dart';

void main() {
  runApp(calender_main());
}

class calender_main extends StatefulWidget {
  @override
  _calender_mainState createState() => _calender_mainState();
}

class _calender_mainState extends State<calender_main> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DemoApp(),
    );
  }
}
