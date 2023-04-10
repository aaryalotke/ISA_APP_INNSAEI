import 'package:flutter/material.dart';
import 'home_new.dart';
import 'initiatives.dart';
// import 'models/init_model.dart';
import 'initiatives_main.dart';
import 'main_contactus.dart';
import 'main_profile.dart';

class initdetail_main extends StatefulWidget {
  final InitiativeDetails;
  final String access;
  initdetail_main({required this.InitiativeDetails, required this.access});

  @override
  _initdetail_mainState createState() =>
      _initdetail_mainState(InitiativeDetails: InitiativeDetails);
}

class _initdetail_mainState extends State<initdetail_main> {
  final InitiativeDetails;
  _initdetail_mainState({required this.InitiativeDetails});

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
    return MaterialApp(
      home: Scaffold(
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
          child: Container(
            height: MediaQuery.of(context).size.height,
            width: double.infinity,

            //Stack starts
            child: Stack(
              alignment: Alignment.center,
              children: <Widget>[
                Positioned(
                  top: MediaQuery.of(context).size.height * 0.1,
                  child: Image.asset(
                    InitiativeDetails.image,
                    width: MediaQuery.of(context).size.width * 0.8,
                    height: MediaQuery.of(context).size.height * 0.3,
                    fit: BoxFit.fitHeight,
                  ),
                ),
                Positioned(
                  top: MediaQuery.of(context).size.height * 0.5,
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width * 0.9,
                    height: MediaQuery.of(context).size.height * 0.4,
                    // margin: EdgeInsets.all(20),
                    child: Text(
                      InitiativeDetails.title,
                      // "Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsumLorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum v Lorem ipsum",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        fontFamily: 'Voces',
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: MediaQuery.of(context).size.height * 0.6,
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width * 0.9,
                    height: MediaQuery.of(context).size.height * 0.4,
                    // margin: EdgeInsets.all(20),
                    child: Text(
                      InitiativeDetails.desc,
                      // "Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsumLorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum v Lorem ipsum",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 18,
                        fontFamily: 'Voces',
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
