import 'package:flutter/material.dart';
import 'package:isa/main_contactus.dart';
import 'home_new.dart';
import 'main_profile.dart';
import 'models/format_edi.dart';
import 'page_edi.dart';

import 'api_class1.dart';
// import 'models/format_edi.dart';

//importing the packages required for integration
import 'dart:convert';
import 'dart:async';

// void main() {
//   runApp(TabBarDemo());
// }

// class TabBarDemo extends StatelessWidget {
//   // const TabBarDemo({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       theme: ThemeData(
//         fontFamily: 'Voces',
//       ),
//       home: edito(widget.access),
//       debugShowCheckedModeBanner: false,
//     );
//   }
// }

class edito extends StatefulWidget {
  final String access;
  const edito(this.access, {Key? key}) : super(key: key);
  @override
  State<edito> createState() => _editoState();
}

class _editoState extends State<edito> {
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
              transitionDuration: const Duration(seconds: 1),
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
              transitionDuration: const Duration(seconds: 1),
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
  final List<Format> editorial = [];

  bool isLoaded = false;
  @override
  void initState() {
    super.initState();
    getedi();
  }

  getedi() async {
    print(widget.access);
    try {
      var response = await api().getEditorialList(widget.access);

      print(response);
      // List decoded = jsonDecode(response);
      List list = (jsonDecode(response) as List<dynamic>);

      print(">>> editorials list retrieved successfully");

      for (var element in list) {
        print(element["link"]);
        for (var count in element["link"]) {
          Format item = Format.fromJson(count);
          editorial.add(item);
        }
      }
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: Text(e.toString()),
        backgroundColor: Colors.red,
        elevation: 10,
        behavior: SnackBarBehavior.floating,
        margin: const EdgeInsets.all(5),
      ));
    }
    Future.delayed(const Duration(seconds: 1), () {
      isLoaded = true;
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.of(context).pop(),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        title: const Text(
          'Editorials',
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
              padding: const EdgeInsets.all(20),
              child: ListView(
                children: <Widget>[
                  page_edi(editorial),
                ],
              ),
            )
          : const Center(
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
