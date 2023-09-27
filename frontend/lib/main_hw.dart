import 'package:flutter/material.dart';
import 'package:isa/custom_exception.dart';
import './models/format_hw.dart';
import 'api_class1.dart';
import 'hw_detail.dart';
import 'page_hw.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';
import 'package:badges/badges.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';

import 'dart:convert';

import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:isa/home_new.dart';
import 'package:isa/main_contactus.dart';
import 'main_profile.dart';
//import 'package:shared_preferences/shared_preferences.dart';

////////////////---INTEGRATION PART---///////////////////////////////////////

//importing the packages required for integration
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'dart:async';

class inventory extends StatefulWidget {
  final String access;
  inventory(this.access);
  @override
  State<inventory> createState() => _inventoryState();
}

class _inventoryState extends State<inventory> {
  // DBHelper dbHelper= DBHelper();

  //hardware list
  final List<Format> inventory = [];

  bool isLoaded = false;

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

  void initState() {
    super.initState();
    getinventory();
  }

  getinventory() async {
    print(widget.access);

    try {
      var response = await api().getInventoryList(widget.access);

      print(response);
      // List decoded = jsonDecode(response);
      List list = (jsonDecode(response) as List<dynamic>);

      print(">>> inventory list retrieved successfully");

      for (var element in list) {
        print("----------------------------------------------------------");
        print(element["ComponentList"]);
        for (var coun in element["ComponentList"]) {
          Format item = Format.fromJson(coun);
          print(item);
          inventory.add(item);
        }
      }

      print(inventory.length);
      print(inventory[0].name!);
    } on CustomException{
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: Text("Could not fetch inventory"),
        backgroundColor: Colors.red,
        elevation: 10,
        behavior: SnackBarBehavior.floating,
        margin: const EdgeInsets.all(5),
      ));
    }
    isLoaded = true;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appbar
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.of(context).pop(),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        title: const Text(
          'Hardware Inventory',
          style: TextStyle(
            fontSize: 30,
            color: Colors.black,
            fontFamily: 'Ubuntu_Bold',
          ),
          textAlign: TextAlign.center,
        ),
      ),

      //carousal
      body: SafeArea(
        child: Container(
          child: isLoaded
              ? page_hw(inventory, widget.access)
              : Center(
                  child: CircularProgressIndicator(),
                ),
        ),
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
