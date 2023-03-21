import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:isa/calender_main.dart';
import 'package:isa/upcoming_events.dart';
import 'package:url_launcher/url_launcher_string.dart';

import 'edi_main.dart';
import 'email_n_members.dart';
import 'gallery_main.dart';
import 'main_contactus.dart';
import 'main_developers.dart';
import 'main_hw.dart';
import 'main_our_team.dart';
import 'main_profile.dart';
import 'page_edi.dart';

class homePage extends StatefulWidget {
  final String access;
  homePage(this.access);
  // const homePage({Key? key, required this.access}) : super(key: key);

  @override
  State<homePage> createState() => _homePageState();
}

class _homePageState extends State<homePage> {
  launchurledi(String url) async {
    if (await canLaunchUrlString(url)) {
      await launchUrlString(url);
    } else {
      throw 'Could not launch $url';
    }
  }

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
          MaterialPageRoute(builder: (context) => SIForm(widget.access)),
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
          MaterialPageRoute(builder: (context) => profile_members(widget.access)),
        );
        break;
    }
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenheight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Column(
        children: <Widget>[
          Container(
            height: screenheight * 0.4,
            decoration: const BoxDecoration(
              color: Color(0xff00467F),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  margin: EdgeInsets.only(top: screenheight * 0.1, bottom: 20),
                  child: Image.asset(
                    'assets/images/ISA-white.png',
                    width: screenWidth * 0.3,
                  ),
                ),
                Center(
                  child: AnimatedTextKit(
                    animatedTexts: [
                      TypewriterAnimatedText(
                        'Setting the standards for Automation',
                        textStyle: const TextStyle(
                          fontSize: 22.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                        textAlign: TextAlign.center,
                        speed: const Duration(milliseconds: 200),
                      ),
                    ],
                    totalRepeatCount: 15,
                    pause: const Duration(milliseconds: 2000),
                    displayFullTextOnTap: true,
                    stopPauseOnTap: true,
                  ),
                ),
              ],
            ),
          ),
          Container(
            // margin: const EdgeInsets.only(top: 40, bottom: 30),
           height: screenheight * 0.1,
            child: Center(
              child: const Text(
                "Welcome to ISA-VESIT",
                style: TextStyle(fontSize: 25),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          Container(
            
            child: SizedBox(
              height: screenheight * 0.39,
              child: ListView(
                padding: EdgeInsets.only(top: 0),
                children: [
                  Container(
                    child: GridView.count(
                      shrinkWrap: true,
                      primary: false,
                      padding: const EdgeInsets.all(0),
                      crossAxisSpacing: 0,
                      mainAxisSpacing: 0,
                      crossAxisCount: 3,
                      children: <Widget>[
                        // Initiatives
                        Card(
                          elevation: 20,
                          color: Colors.white,
                          shape: RoundedRectangleBorder(
                              side: const BorderSide(
                                color: Color(0xffD4D4D4),
                              ),
                              borderRadius: BorderRadius.circular(10.0)),
                          child: InkWell(
                            onTap: () {
                              print("Initiatives");
                              print(widget.access);
                              // Navigator.push(
                              //   context,
                              //   MaterialPageRoute(
                              //       // to be changed
                              //       builder: (context) => email_n_members()),
                              // );
                            },
                            child: Container(
                              padding: EdgeInsets.only(
                                top: 25,
                              ),
                              child: Column(
                                children: [
                                  const Icon(
                                    Icons.inventory_outlined,
                                    color: Colors.black,
                                    size: 32.0,
                                    semanticLabel: '',
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(top: 10),
                                    child: const Text(
                                      "Initiatives",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontSize: 20,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),

                        //editorials
                        Card(
                          elevation: 20,
                          color: Colors.white,
                          shape: RoundedRectangleBorder(
                              side: const BorderSide(
                                color: Color(0xffD4D4D4),
                              ),
                              borderRadius: BorderRadius.circular(10.0)),
                          child: InkWell(
                            onTap: () {
                              print("Editorials");
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => edito(widget.access)),
                              );
                            },
                            child: Container(
                              padding: EdgeInsets.only(
                                top: 25,
                              ),
                              child: Column(
                                children: [
                                  const Icon(
                                    Icons.mail_outline,
                                    color: Colors.black,
                                    size: 32.0,
                                    semanticLabel: '',
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(top: 10),
                                    child: const Text(
                                      "Editorials",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontSize: 20,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),

                        //digital library
                        Card(
                          elevation: 20,
                          color: Colors.white,
                          shape: RoundedRectangleBorder(
                              side: const BorderSide(
                                color: Color(0xffD4D4D4),
                              ),
                              borderRadius: BorderRadius.circular(10.0)),
                          child: InkWell(
                            onTap: () {
                              print("Digital Library");
                            },
                            child: Container(
                              padding: EdgeInsets.only(
                                top: 25,
                              ),
                              child: Column(
                                children: [
                                  const Icon(
                                    Icons.book_outlined,
                                    color: Colors.black,
                                    size: 32.0,
                                    semanticLabel: '',
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(top: 10),
                                    child: const Text(
                                      "Digital library",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontSize: 20,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),

                        //college calendar
                        Card(
                          elevation: 20,
                          color: Colors.white,
                          shape: RoundedRectangleBorder(
                              side: const BorderSide(
                                color: Color(0xffD4D4D4),
                              ),
                              borderRadius: BorderRadius.circular(10.0)),
                          child: InkWell(
                            onTap: () {
                              print("College Calender");
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        calender_main(widget.access)),
                              );
                            },
                            child: Container(
                              padding: EdgeInsets.only(
                                top: 25,
                              ),
                              child: Column(
                                children: [
                                  const Icon(
                                    Icons.calendar_month_outlined,
                                    color: Colors.black,
                                    size: 32.0,
                                    semanticLabel: '',
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(top: 10),
                                    child: const Text(
                                      "Calender",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontSize: 20,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),

                        //upcoming events
                        Card(
                          elevation: 20,
                          color: Colors.white,
                          shape: RoundedRectangleBorder(
                              side: const BorderSide(
                                color: Color(0xffD4D4D4),
                              ),
                              borderRadius: BorderRadius.circular(10.0)),
                          child: InkWell(
                            onTap: () {
                              print("Upcoming events");
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        upcomingEvents(widget.access)),
                              );
                            },
                            child: Container(
                              padding: EdgeInsets.only(
                                top: 25,
                              ),
                              child: Column(
                                children: [
                                  const Icon(
                                    Icons.upcoming_outlined,
                                    color: Colors.black,
                                    size: 32.0,
                                    semanticLabel: '',
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(top: 10),
                                    child: const Text(
                                      "Upcoming Events",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontSize: 20,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),

                        //hardware inventory
                        Card(
                          elevation: 20,
                          color: Colors.white,
                          shape: RoundedRectangleBorder(
                              side: const BorderSide(
                                color: Color(0xffD4D4D4),
                              ),
                              borderRadius: BorderRadius.circular(10.0)),
                          child: InkWell(
                            onTap: () {
                              print("Hardware Inventory");
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => inventory(widget.access)),
                              );
                            },
                            child: Container(
                              padding: EdgeInsets.only(
                                top: 25,
                              ),
                              child: Column(
                                children: [
                                  const Icon(
                                    Icons.hardware_outlined,
                                    color: Colors.black,
                                    size: 32.0,
                                    semanticLabel: '',
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(top: 10),
                                    child: const Text(
                                      "Hardware Inventory",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontSize: 20,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),

                        //developers
                        Card(
                          elevation: 20,
                          color: Colors.white,
                          shape: RoundedRectangleBorder(
                              side: const BorderSide(
                                color: Color(0xffD4D4D4),
                              ),
                              borderRadius: BorderRadius.circular(10.0)),
                          child: InkWell(
                            onTap: () {
                              print("Developers");
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        trailDevelopers(widget.access)),
                              );
                            },
                            child: Container(
                              padding: EdgeInsets.only(
                                top: 25,
                              ),
                              child: Column(
                                children: [
                                  const Icon(
                                    Icons.developer_mode_outlined,
                                    color: Colors.black,
                                    size: 32.0,
                                    semanticLabel: 'Developers',
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(top: 10),
                                    child: const Text(
                                      "Developers",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontSize: 20,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),

                        //council
                        Card(
                          elevation: 20,
                          color: Colors.white,
                          shape: RoundedRectangleBorder(
                              side: const BorderSide(
                                color: Color(0xffD4D4D4),
                              ),
                              borderRadius: BorderRadius.circular(10.0)),
                          child: InkWell(
                            onTap: () {
                              print("Council");
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        team_main(widget.access)),
                              );
                            },
                            child: Container(
                              padding: EdgeInsets.only(
                                top: 25,
                              ),
                              child: Column(
                                children: [
                                  const Icon(
                                    Icons.group_outlined,
                                    color: Colors.black,
                                    size: 32.0,
                                    semanticLabel: 'Council',
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(top: 10),
                                    child: const Text(
                                      "Council",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontSize: 20,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),

                        //gallery
                        Card(
                          elevation: 20,
                          color: Colors.white,
                          shape: RoundedRectangleBorder(
                              side: const BorderSide(
                                color: Color(0xffD4D4D4),
                              ),
                              borderRadius: BorderRadius.circular(10.0)),
                          child: InkWell(
                            onTap: () {
                              print("Gallery");
                              print(widget.access);
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        gallery_main(widget.access)),
                              );
                            },
                            child: Container(
                              padding: EdgeInsets.only(
                                top: 25,
                              ),
                              child: Column(
                                children: [
                                  const Icon(
                                    Icons.camera_alt_outlined,
                                    color: Colors.black,
                                    size: 32.0,
                                    semanticLabel: '',
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(top: 10),
                                    child: const Text(
                                      "Gallery",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontSize: 20,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
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
