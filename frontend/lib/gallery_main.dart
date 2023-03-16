import "package:flutter/material.dart";
import "./models/gallery.dart";
import 'edi_main.dart';
import "galleryFirst.dart";
import "./models/gallery_software.dart";
import "./models/gallery_others.dart";
import "./gallerySecond.dart";
import 'api_class1.dart';
import "./galleryThird.dart";

////////////////---INTEGRATION PART---///////////////////////////////////////

//importing the packages required for integration
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'dart:async';

import 'home_new.dart';
import 'main_profile.dart';

// Future<gallery> fetchAlbum() async {
//   final response =
//       await http.get(Uri.parse('http://127.0.0.1:8000/app/api/users/gallery/'));

//   if (response.statusCode == 200) {
//     // If the server did return a 200 OK response,
//     // then parse the JSON.
//     // return gallery.fromJson(jsonDecode(response.body));
//   } else {
//     // If the server did not return a 200 OK response,
//     // then throw an exception.
//     throw Exception('Failed to load album');
//   }
// }

// class Album {
//   final int id;
//   final String name;
//   final String poster;
//   final String description;
//   final String type;
//   final String start_date;
//   final String end_date;
//   final String gallery_pic1;
//   final String gallery_pic2;
//   final String gallery_pic3;
//   final String gallery_pic4;

//   const Album({
//     required this.id,
//     required this.name,
//     required this.poster,
//     required this.description,
//     required this.type,
//     required this.start_date,
//     required this.end_date,
//     required this.gallery_pic1,
//     required this.gallery_pic2,
//     required this.gallery_pic3,
//     required this.gallery_pic4,
//   });

//   factory Album.fromJson(Map<String, dynamic> json) {
//     return Album(
//       id: json['id'],
//       name: json['name'],
//       poster: json['poster'],
//       description: json['description'],
//       type: json['type'],
//       start_date: json['start_date'],
//       end_date: json['end_date'],
//       gallery_pic1: json['gallery_pic1'],
//       gallery_pic2: json['gallery_pic2'],
//       gallery_pic3: json['gallery_pic3'],
//       gallery_pic4: json['gallery_pic4'],
//     );
//   }
// }

//////////////////////////////////////////////////////

class gallery_main extends StatefulWidget {
  @override
  State<gallery_main> createState() => _gallery_mainState();
}

class _gallery_mainState extends State<gallery_main> {
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
        // Navigator.push(
        //   context,
        //   MaterialPageRoute(builder: (context) => edito()),
        // );
        break;
      case 1:
        // Navigator.push(
        //   context,
        //   MaterialPageRoute(builder: (context) => homePage()),
        // );
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
  // final List<gallery> _galleryImages = [

  List<gallery> hardware = [];
  List<gallery> software = [];
  List<gallery> others = [];

// final hardware = <Map<String, dynamic>>[];
// final software = <Map<String, dynamic>>[];
// final others = <Map<String, dynamic>>[];

  bool isLoaded = false;
  void initState() {
    super.initState();
    getGym();
  }

  getGym() async {
    List decoded = jsonDecode(await api().getGalleryList(
            "eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNjc0MDY0NDEyLCJpYXQiOjE2NjYyODg0MTIsImp0aSI6IjNiMjE3YjdjOWRjMTRlNDM5NzdmNGU5MWM3ODYzNzE5IiwidXNlcl9pZCI6NX0.yAHpYbkrYj2ynio84iS_tZ7Z0z8LpQXMwtpirv-PIos"))[
        "post"];
    print(">>> Gym List retrieved successfully");

    for (var element in decoded) {
      gallery item = gallery.fromJson(element);

      if (item.type == "Hardware") {
        hardware.add(item);
      } else if (item.type == "Software") {
        software.add(item);
      } else {
        others.add(item);
      }
      ;
    }
    Future.delayed(Duration(seconds: 2), () {
      isLoaded = true;
      setState(() {});
    });

    print(hardware);
    print(software);
    print(others);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 3,
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
                  'Hardware',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.black,
                    fontFamily: 'Voces',
                  ),
                )),
                Tab(
                    child: Text(
                  'Software',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.black,
                    fontFamily: 'Voces',
                  ),
                )),
                Tab(
                    child: Text(
                  'Others',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.black,
                    fontFamily: 'Voces',
                  ),
                )),
              ],
            ),
            title: const Text(
              'Gallery',
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
                          galleryFirst(hardware)
                          //galleryFirst ko call kiya with images as arguments
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(20),
                      child: ListView(
                        children: <Widget>[
                          //Code for images part
                          gallerySecond(software)
                          //gallerySecond ko call kiya with images as arguments
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(20),
                      child: ListView(
                        children: <Widget>[
                          //Code for images part
                          galleryThird(others)
                          //galleryThird ko call kiya with images as arguments
                        ],
                      ),
                    )
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
