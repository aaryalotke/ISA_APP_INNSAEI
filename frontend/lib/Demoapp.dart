import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_clean_calendar/flutter_clean_calendar.dart';
import 'package:isa/main_contactus.dart';
import 'package:table_calendar/table_calendar.dart';

import 'edi_main.dart';
import 'home_new.dart';
import 'main_profile.dart';

class DemoApp extends StatefulWidget {
  final String access;
  DemoApp(this.access);

  @override
  _DemoAppState createState() => _DemoAppState();
}

class _DemoAppState extends State<DemoApp> {
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

  DateTime selectedDay = DateTime.now();
  DateTime selectedEvent = DateTime.now();
  // List <CleanCalendarEvent> selectedEvent  ;

  final Map<DateTime, List<CleanCalendarEvent>> events = {
    DateTime(DateTime.now().year, DateTime.now().month, DateTime.now().day): [
      CleanCalendarEvent('Event A',
          startTime: DateTime(DateTime.now().year, DateTime.now().month,
              DateTime.now().day, 10, 0),
          endTime: DateTime(DateTime.now().year, DateTime.now().month,
              DateTime.now().day, 12, 0),
          description: 'A special event',
          color: Colors.orange),
    ],
    DateTime(DateTime.now().year, DateTime.now().month, DateTime.now().day + 2):
        [
      CleanCalendarEvent('Event B',
          startTime: DateTime(DateTime.now().year, DateTime.now().month,
              DateTime.now().day + 2, 10, 0),
          endTime: DateTime(DateTime.now().year, DateTime.now().month,
              DateTime.now().day + 2, 12, 0),
          description: 'A special event',
          color: Colors.orange),
      CleanCalendarEvent('Event C',
          startTime: DateTime(DateTime.now().year, DateTime.now().month,
              DateTime.now().day + 2, 14, 30),
          endTime: DateTime(DateTime.now().year, DateTime.now().month,
              DateTime.now().day + 2, 17, 0),
          description: 'A very special event',
          color: Colors.pink),
    ],
    DateTime(DateTime.now().year, DateTime.now().month, DateTime.now().day + 5):
        [
      CleanCalendarEvent('Event B',
          startTime: DateTime(DateTime.now().year, DateTime.now().month,
              DateTime.now().day + 2, 10, 0),
          endTime: DateTime(DateTime.now().year, DateTime.now().month,
              DateTime.now().day + 2, 12, 0),
          description: 'A special event',
          color: Colors.orange),
      CleanCalendarEvent('Event C',
          startTime: DateTime(DateTime.now().year, DateTime.now().month,
              DateTime.now().day + 2, 14, 30),
          endTime: DateTime(DateTime.now().year, DateTime.now().month,
              DateTime.now().day + 2, 17, 0),
          description: 'A very special event',
          color: Colors.pink),
      CleanCalendarEvent('Event D',
          startTime: DateTime(DateTime.now().year, DateTime.now().month,
              DateTime.now().day + 2, 14, 30),
          endTime: DateTime(DateTime.now().year, DateTime.now().month,
              DateTime.now().day + 2, 17, 0),
          description: 'A very very special event',
          color: Colors.blueAccent),
      CleanCalendarEvent('Event E',
          startTime: DateTime(DateTime.now().year, DateTime.now().month,
              DateTime.now().day + 2, 14, 30),
          endTime: DateTime(DateTime.now().year, DateTime.now().month,
              DateTime.now().day + 2, 17, 0),
          description: 'A very very  very special event',
          color: Colors.purple),
    ],
  };

  void _handleData(date) {
    setState(() {
      selectedDay = date;
      // selectedEvent = events[selectedDay] ?? [];
    });
    // print(selectedDay);
  }

  @override
  void initState() {
    // TODO: implement initState
    // selectedEvent = events[selectedDay] ?? [];
    super.initState();
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
        title: Text(
          'CALENDER',
          style: TextStyle(
              fontFamily: 'Ubuntu', fontSize: 25, color: Colors.black),
        ),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Container(
          child: Calendar(
            startOnMonday: true,
            selectedColor: Color(0xFF00467F),
            todayColor: Color(0xFFFE735D),
            eventColor: Colors.black,
            eventDoneColor: Colors.green,
            // bottomBarColor: Colors.deepOrange,
            // onRangeSelected: (range) {
            //   print('selected Day ${range.from},${range.to}');
            // },
            onDateSelected: (date) {
              return _handleData(date);
            },
            events: events,
            isExpanded: true,
            // dayOfWeekStyle: TextStyle(
            //   fontSize: 15,
            //   color: Colors.black12,
            //   fontWeight: FontWeight.w100,
            // ),
            dayOfWeekStyle: TextStyle(color: Color(0xFF00467F)),

            bottomBarTextStyle: TextStyle(
              color: Colors.white,
            ),
            hideBottomBar: false,
            hideTodayIcon: true,
            hideArrows: false,
            weekDays: ['Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat', 'Sun'],
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
