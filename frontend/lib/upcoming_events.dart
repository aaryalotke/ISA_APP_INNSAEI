import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:isa/home.dart';

import 'edi_main.dart';
import 'main_profile.dart';

class upcomingEvents extends StatefulWidget {
  const upcomingEvents({Key? key}) : super(key: key);

  @override
  State<upcomingEvents> createState() => _upcomingEventsState();
}

class _upcomingEventsState extends State<upcomingEvents> {
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
        body: Column(
          children: [
            SizedBox(
              height: screenheight * 0.777,
              child: ListView(
                children: [
                  Image.asset(
                    'assets/images/analog.jpg',
                    width: MediaQuery.of(context).size.width * 1,
                  ),
                  Container(
                    margin: EdgeInsets.all(20),
                    child: Text(
                      "Analog Electronics Workshop",
                      style: TextStyle(
                        fontFamily: 'Voces',
                        fontSize: 25,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 10, bottom: 30),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: const [
                        Text(
                          '24 January, 2023',
                          style: TextStyle(
                            fontFamily: 'Voces',
                            fontSize: 18,
                            color: Color(0xFF00467F),
                          ),
                        ),
                        Text(
                          'to',
                          style: TextStyle(
                            fontFamily: 'Voces',
                            fontSize: 18,
                            color: Color(0xFF00467F),
                          ),
                        ),
                        Text(
                          '25 January, 2023',
                          style: TextStyle(
                            fontFamily: 'Voces',
                            fontSize: 18,
                            color: Color(0xFF00467F),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(30),
                    height: 1,
                    width: screenWidth * 0.5,
                    alignment: Alignment.center,
                    color: Color(0xFFFE735D),
                  ),
                  Container(
                    margin: EdgeInsets.all(20),
                    child: Text(
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam at faucibus est, et placerat est. ',
                      style: TextStyle(fontSize: 20),
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
                      },
                      child: Text('Register'),
                    ),
                  )
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
        ));
  }
}
