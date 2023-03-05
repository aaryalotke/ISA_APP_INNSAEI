import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_clean_calendar/flutter_clean_calendar.dart';
import 'package:table_calendar/table_calendar.dart';


class DemoApp extends StatefulWidget {
  @override
  _DemoAppState createState() => _DemoAppState();
}

class _DemoAppState extends State<DemoApp> {

  DateTime selectedDay = DateTime.now();
    DateTime selectedEvent =DateTime.now();
 // List <CleanCalendarEvent> selectedEvent  ;

  final Map<DateTime,List<CleanCalendarEvent>> events = {
    DateTime (DateTime.now().year,DateTime.now().month,DateTime.now().day):
        [
          CleanCalendarEvent('Event A',
          startTime: DateTime(
              DateTime.now().year,DateTime.now().month,DateTime.now().day,10,0),
            endTime:  DateTime(
                DateTime.now().year,DateTime.now().month,DateTime.now().day,12,0),
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

  void _handleData(date){
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
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: Text('CALENDER', style: TextStyle(
              fontFamily: 'Ubuntu', fontSize: 25, color: Colors.black),),
          centerTitle: true,
        ),
      body:  SafeArea(
        child: Container(
          child: Calendar(
            startOnMonday: true,
            selectedColor: Color(0xFF00467F),
            todayColor:  Color(0xFFFE735D),
            eventColor: Colors.black,
            eventDoneColor: Colors.green,
           // bottomBarColor: Colors.deepOrange,
            // onRangeSelected: (range) {
            //   print('selected Day ${range.from},${range.to}');
            // },
            onDateSelected: (date){
              return _handleData(date);
            },
            events: events,
            isExpanded: true,
            // dayOfWeekStyle: TextStyle(
            //   fontSize: 15,
            //   color: Colors.black12,
            //   fontWeight: FontWeight.w100,
            // ),
            dayOfWeekStyle: TextStyle(
              color: Color(0xFF00467F)
              ),

              
         
          
         
            bottomBarTextStyle: TextStyle(
              color: Colors.white,
            ),
            hideBottomBar: false,
             hideTodayIcon: true,
            hideArrows: false,
            weekDays: ['Mon','Tue','Wed','Thu','Fri','Sat','Sun'],
          ),
        ),
      ),
    );
  }
}