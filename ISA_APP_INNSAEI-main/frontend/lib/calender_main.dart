import 'package:flutter/material.dart';
import 'Demoapp.dart';

class calender_main extends StatefulWidget {
  final String access;
  const calender_main(this.access, {Key? key}) : super(key: key);

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
