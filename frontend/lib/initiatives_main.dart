import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';

import 'home_new.dart';
import 'initiatives.dart';
import 'main_contactus.dart';
import 'main_profile.dart';
import 'models/initiatives.dart';

class initiatives_main extends StatefulWidget {
  final String access;
  initiatives_main(this.access);

  @override
  State<initiatives_main> createState() => _initiatives_mainState();
}

class _initiatives_mainState extends State<initiatives_main> {
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
              transitionDuration: Duration(seconds: 2),
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
              transitionDuration: Duration(seconds: 2),
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
      //Appbar
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.of(context).pop(),
        ),
        centerTitle: true,
        title: Text(
          'Initiatives',
          style: TextStyle(
            fontSize: 30,
            color: Colors.black,
            fontFamily: 'Ubuntu_Bold',
          ),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.fromLTRB(20, 30, 20, 20),
        child: MediaQuery.removePadding(
          context: context,
          removeTop: true,
          child: Container(
            child: initiatives(widget
                .access), //initiatives ko call kiya with _details as argument
          ),
        ),
      ),
    );
  }
}
