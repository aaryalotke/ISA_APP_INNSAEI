import 'package:flutter/material.dart';
import 'edi_main.dart';
import 'home_new.dart';
import 'main_profile.dart';
import 'models/format_team.dart';
import 'page_BE.dart';
import 'page_SE.dart';
import 'page_TE.dart';
import 'page_FACULTY.dart';
import 'package:flip_card/flip_card.dart';
import 'dart:math';
import 'api_class1.dart';

//importing the packages required for integration
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'dart:async';

class team_main extends StatefulWidget {
  @override
  State<team_main> createState() => _team_mainState();
}

class _team_mainState extends State<team_main> {
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
          MaterialPageRoute(builder: (context) => edito()),
        );
        break;
      case 1:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => homePage()),
        );
        break;
      case 2:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => profile_members()),
        );
        break;
    }
    setState(() {
      _selectedIndex = index;
    });
  }

  List<Council> BE = [];
  List<Council> TE = [];
  List<Council> SE = [];
  List<Council> FACULTY = [];

  bool isLoaded = false;
  void initState() {
    super.initState();
    getGym();
  }

  getGym() async {
    //print("hehe");
    var response = await api().getCouncilList(
        "eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNjc0MDY0NDEyLCJpYXQiOjE2NjYyODg0MTIsImp0aSI6IjNiMjE3YjdjOWRjMTRlNDM5NzdmNGU5MWM3ODYzNzE5IiwidXNlcl9pZCI6NX0.yAHpYbkrYj2ynio84iS_tZ7Z0z8LpQXMwtpirv-PIos");

    print(response);
    // List decoded = jsonDecode(response);
    List list = (jsonDecode(response) as List<dynamic>);

    print(">>> Gym List retrieved successfully");

    for (var element in list) {
      print("----------------------------------------------------------");
      print(element["link"]);
      for (var coun in element["link"]) {
        Council item = Council.fromJson(coun);
        if (item.council == "BE") {
          BE.add(item);
        } else if (item.council == "TE") {
          TE.add(item);
        }
        // else{
        //    SE.add(item);
        // };
        else if (item.council == "SE") {
          SE.add(item);
        } else {
          FACULTY.add(item);
        }
        ;
      }
      //   Council item = Council.fromJson(element);

      //  if(item.council=="BE"){
      //      BE.add(item);
      //   }
      //   else if(item.council=="TE"){
      //      TE.add(item);
      //   }
      //   else{
      //      SE.add(item);
      //   };

    }
    Future.delayed(Duration(seconds: 2), () {
      isLoaded = true;
      setState(() {});
    });

    print(BE);
    print(TE);
    print(SE);
    print(FACULTY);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 4,
        //length: 3,
        child: Scaffold(
          //Appbar
          appBar: AppBar(
            leading: IconButton(
              icon: Icon(Icons.arrow_back, color: Colors.black),
              onPressed: () => Navigator.of(context).pop(),
            ),
            elevation: 0,
            backgroundColor: Colors.transparent,
            centerTitle: true,
            bottom: const TabBar(
              indicatorColor: Color(0xFF00467f), //the slider
              indicatorSize: TabBarIndicatorSize.label,
              indicatorWeight: 5,
              tabs: [
                Tab(
                    child: Text(
                  'BE',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.black,
                    fontFamily: 'Voces',
                  ),
                )),
                Tab(
                    child: Text(
                  'TE',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.black,
                    fontFamily: 'Voces',
                  ),
                )),
                Tab(
                    child: Text(
                  'SE',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.black,
                    fontFamily: 'Voces',
                  ),
                )),
                Tab(
                    child: Text(
                  'Faculty',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.black,
                    fontFamily: 'Voces',
                  ),
                )),
              ],
            ),
            title: const Text(
              'Our Team',
              style: TextStyle(
                fontSize: 30,
                color: Colors.black,
                fontFamily: 'Ubuntu_Bold',
              ),
              textAlign: TextAlign.center,
            ),
          ),

          body: isLoaded
              ? TabBarView(
                  children: [
                    Container(
                      padding: EdgeInsets.all(20),
                      child: ListView(
                        children: <Widget>[
                          //Code for images part
                          page_BE(BE)
                          //galleryFirst ko call kiya with images as arguments
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(20),
                      child: ListView(
                        children: <Widget>[
                          //Code for images part
                          page_TE(TE)
                          //gallerySecond ko call kiya with images as arguments
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(20),
                      child: ListView(
                        children: <Widget>[
                          //Code for images part
                          page_SE(SE)
                          //galleryThird ko call kiya with images as arguments
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(20),
                      child: ListView(
                        children: <Widget>[
                          //Code for images part
                          page_FACULTY(FACULTY)
                          //galleryFirst ko call kiya with images as arguments
                        ],
                      ),
                    ),
                  ],
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
        ),
      ),
    );
  }
}
