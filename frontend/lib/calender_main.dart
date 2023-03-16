import 'package:flutter/material.dart';
import 'Demoapp.dart';

// void main() {
//   runApp(calender_main());
// }

class calender_main extends StatefulWidget {
  final String access;
  calender_main(this.access);

  @override
  _calender_mainState createState() => _calender_mainState();
}

class _calender_mainState extends State<calender_main> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DemoApp(widget.access),
    );
  }
}
