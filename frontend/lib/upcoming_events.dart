import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
// import 'package:isa/home.dart';
import 'package:url_launcher/url_launcher_string.dart';
import 'package:url_launcher/url_launcher.dart';

import 'edi_main.dart';
import 'main_profile.dart';
import 'api_class1.dart';
import 'models/upcomingEvent_model.dart';

class upcomingEvents extends StatefulWidget {
  const upcomingEvents({Key? key}) : super(key: key);

  @override
  State<upcomingEvents> createState() => _upcomingEventsState();
}

class _upcomingEventsState extends State<upcomingEvents> {
  launchurledi(String url) async {
    if (await canLaunchUrlString(url)) {
      await launchUrlString(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  late List<upcomingEvent> _upcomingEvent = [];
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
          MaterialPageRoute(builder: (context) => edito()),
        );
        break;
      case 1:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => edito()),
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

  void initState() {
    super.initState();
    getEvent();
  }

  getEvent() async {
    var response = await api().getUpcomingEvent(
        "eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNjgzOTE2MzkyLCJpYXQiOjE2NzYxNDAzOTIsImp0aSI6IjJiZjBiMjY0OGJmYzRhNGViNDIxODk2YzBmMmI2NWIxIiwidXNlcl9pZCI6MX0._-pItytK8JG10c5nH_UeC57R23xLBGrPFFRYcCzzejQ");
    print(response);

    List list = (jsonDecode(response) as List<dynamic>);

    print(">>> Upcoming Event retrieved successfully");

    for (var element in list) {
      print("----------------------------------------------------------");
      print(element["link"]);
      for (var coun in element["link"]) {
        upcomingEvent item = upcomingEvent.fromJson(coun);
        _upcomingEvent.add(item);
      }
    }
    Future.delayed(Duration(seconds: 1), () {
      isLoaded = true;
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    final ButtonStyle style =
        ElevatedButton.styleFrom(textStyle: const TextStyle(fontSize: 20));

    double screenWidth = MediaQuery.of(context).size.width;
    double screenheight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.of(context).pop(),
        ),
        elevation: 0,
        backgroundColor: Colors.transparent,
        centerTitle: true,
        title: const Text(
          'Upcoming Event',
          style: TextStyle(
            fontSize: 30,
            color: Colors.black,
            fontFamily: 'Ubuntu_Bold',
          ),
          textAlign: TextAlign.center,
        ),
      ),
      body: _upcomingEvent == null || _upcomingEvent.isEmpty
          ? const Center(
              child: CircularProgressIndicator(),
            )
          : Column(
              children: [
                SizedBox(
                  height: screenheight * 0.777,
                  child: ListView(
                    children: [
                      Image.network(
                        _upcomingEvent[0].PosterImage.toString(),
                        height: MediaQuery.of(context).size.height * 0.4,
                      ),
                      Container(
                        margin: EdgeInsets.all(20),
                        child: Text(
                          _upcomingEvent[0].EventName.toString(),
                          style: TextStyle(
                            fontFamily: 'Voces',
                            fontSize: 25,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 10, bottom: 30),
                        child: Text(
                          _upcomingEvent[0].DurationDate.toString(),
                          style: TextStyle(
                            fontFamily: 'Voces',
                            fontSize: 20,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.all(30),
                        height: 50,
                        width: screenWidth * 0.2,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: Color(0xFF00467F),
                            // padding:
                            //     EdgeInsets.symmetric(horizontal: 140, vertical: 10),
                            elevation: 0,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(3.0),
                            ),
                          ),
                          onPressed: () {
                            print('Register for upcoming event');
                            launchurledi(_upcomingEvent[0].FormLink.toString());
                          },
                          child: Text('Register'),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.all(30),
                        height: 3,
                        width: screenWidth * 0.5,
                        alignment: Alignment.center,
                        color: Color(0xFFFE735D),
                      ),
                      Container(
                        margin: EdgeInsets.all(20),
                        child: Text(
                          _upcomingEvent[0].Description.toString(),
                          style: TextStyle(
                            fontFamily: 'Voces',
                            fontSize: 25,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
                  ),
                ),
                BottomNavigationBar(
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
              ],
            ),
    );
  }
}
