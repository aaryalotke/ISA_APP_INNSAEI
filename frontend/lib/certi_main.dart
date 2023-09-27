import 'package:flutter/material.dart';

import 'package:isa/main_contactus.dart';
import 'home_new.dart';
// import 'page_certi.dart';
import 'main_profile.dart';
import 'models/format_certi.dart';
import 'page_three.dart';

// import 'page_certi.dart';
import 'api_class1.dart';
import 'package:url_launcher/url_launcher.dart';

//importing the packages required for integration
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'dart:async';

class certi_page extends StatefulWidget {
  final String access;
  certi_page(this.access);

  @override
  State<certi_page> createState() => _certi_pageState();
}

class _certi_pageState extends State<certi_page> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 70, fontWeight: FontWeight.bold, color: Colors.white);

  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Index 0: Contact',
      style: optionStyle,
    ),
    Text(
      'Index 1: Home',
      style: optionStyle,
    ),
    Text(
      'Index 2: Profile',
      style: optionStyle,
    ),
  ];

  void _onItemTapped(int index) {
    switch (index) {
      case 0:
        Navigator.push(
          context,
          PageRouteBuilder(
              pageBuilder: (_, a, b) => SIForm(widget.access),
              transitionDuration: Duration(seconds: 1),
              transitionsBuilder: (_, a, __, c) => FadeTransition(
                    opacity: a,
                    child: c,
                  )),
        );
        break;
      case 1:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => homePage(widget.access)),
        );
        break;
      case 2:
        Navigator.push(
          context,
          PageRouteBuilder(
              pageBuilder: (_, a, b) => profile_members(widget.access),
              transitionDuration: Duration(seconds: 1),
              transitionsBuilder: (_, a, __, c) => FadeTransition(
                    opacity: a,
                    child: c,
                  )),
        );
        break;
    }
    setState(() {
      _selectedIndex = index;
    });
  }

  // list format
  final List<Format> certi = [];

  bool isLoaded = false;
  void initState() {
    super.initState();
    getcerti();
  }

  getcerti() async {
    print(widget.access);
    var response = await api().getCertiList(widget.access);

    print(response);
    // List decoded = jsonDecode(response);
    List list = (jsonDecode(response) as List<dynamic>);

    print(">>> certis list retrieved successfully");

    for (var element in list) {
      print("----------------------------------------------------------");
      print(element["link"]);
      for (var coun in element["link"]) {
        Format item = Format.fromJson(coun);
        certi.add(item);
      }
    }
    Future.delayed(Duration(seconds: 1), () {
      isLoaded = true;
      setState(() {});
    });

    print(certi[0]);
    print(certi[1]);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.of(context).pop(),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        title: const Text(
          'My Certificates',
          style: TextStyle(
            fontSize: 30,
            color: Colors.black,
            fontFamily: 'Ubuntu_Bold',
          ),
          textAlign: TextAlign.center,
        ),
      ),
      body: isLoaded
          ? Container(
              // height: MediaQuery.of(context).size.height,
              //  width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.all(20),
              child: page_three(certi),
            )
          : Center(
              child: CircularProgressIndicator(),
            ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: const Color(0xff00467F),
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.contact_phone,
              color: Colors.white,
            ),
            label: 'Contact',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: Colors.white,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person,
              color: Colors.white,
            ),
            label: 'Profile',
          ),
        ],
        unselectedLabelStyle:
            const TextStyle(color: Colors.white, fontSize: 14),
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white,
        onTap: _onItemTapped,
      ),
    );
  }
}
