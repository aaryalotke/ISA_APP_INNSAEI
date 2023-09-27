// import 'package:flutter/material.dart';
// import 'package:flutter_clean_calendar/flutter_clean_calendar.dart';
// import 'package:isa/main_contactus.dart';

// import 'home_new.dart';
// import 'main_profile.dart';

// class DemoApp extends StatefulWidget {
//   final String access;
//   DemoApp(this.access);

//   @override
//   _DemoAppState createState() => _DemoAppState();
// }

// class _DemoAppState extends State<DemoApp> {
//   int _selectedIndex = 0;
//   static const TextStyle optionStyle =
//       TextStyle(fontSize: 70, fontWeight: FontWeight.bold, color: Colors.white);

//   static const List<Widget> _widgetOptions = <Widget>[
//     Text(
//       'Index 0: Contact',
//       style: optionStyle,
//     ),
//     Text(
//       'Index 1: Home',
//       style: optionStyle,
//     ),
//     Text(
//       'Index 2: Profile',
//       style: optionStyle,
//     ),
//   ];

//   void _onItemTapped(int index) {
//     switch (index) {
//       case 0:
//         Navigator.push(
//           context,
//           PageRouteBuilder(
//               pageBuilder: (_, a, b) => SIForm(widget.access),
//               transitionDuration: Duration(seconds: 1),
//               transitionsBuilder: (_, a, __, c) => FadeTransition(
//                     opacity: a,
//                     child: c,
//                   )),
//         );
//         break;
//       case 1:
//         Navigator.push(
//           context,
//           MaterialPageRoute(builder: (context) => homePage(widget.access)),
//         );
//         break;
//       case 2:
//         Navigator.push(
//           context,
//           PageRouteBuilder(
//               pageBuilder: (_, a, b) => profile_members(widget.access),
//               transitionDuration: Duration(seconds: 1),
//               transitionsBuilder: (_, a, __, c) => FadeTransition(
//                     opacity: a,
//                     child: c,
//                   )),
//         );
//         break;
//     }
//     setState(() {
//       _selectedIndex = index;
//     });
//   }

//   DateTime selectedDay = DateTime.now();
//   DateTime selectedEvent = DateTime.now();
//   // List <CleanCalendarEvent> selectedEvent  ;

//   final Map<DateTime, List<CleanCalendarEvent>> events = {
//     //jan
//     DateTime(2023, 1, 9): [
//       CleanCalendarEvent('Beginning of the Term : UG program',
//           startTime: DateTime(DateTime.now().year, DateTime.now().month,
//               DateTime.now().day, 8, 30),
//           endTime: DateTime(DateTime.now().year, DateTime.now().month,
//               DateTime.now().day, 3, 0),
//           // description: 'A special event',
//           color: Colors.orange),
//     ],
//     DateTime(2023, 1, 12): [
//       CleanCalendarEvent('Prarambh`22',
//           startTime: DateTime(DateTime.now().year, DateTime.now().month,
//               DateTime.now().day, 8, 30),
//           endTime: DateTime(DateTime.now().year, DateTime.now().month,
//               DateTime.now().day, 3, 0),
//           // description: 'A special event',
//           color: Colors.orange),
//       CleanCalendarEvent('Swami Vivekanand Jayanti',
//           startTime: DateTime(DateTime.now().year, DateTime.now().month,
//               DateTime.now().day, 8, 30),
//           endTime: DateTime(DateTime.now().year, DateTime.now().month,
//               DateTime.now().day, 3, 0),
//           // description: 'A special event',
//           color: Colors.pink),
//       CleanCalendarEvent('Start of window period for society activities',
//           startTime: DateTime(DateTime.now().year, DateTime.now().month,
//               DateTime.now().day, 8, 30),
//           endTime: DateTime(DateTime.now().year, DateTime.now().month,
//               DateTime.now().day, 3, 0),
//           // description: 'A special event',
//           color: Colors.purple),
//     ],
//     DateTime(2023, 1, 13): [
//       CleanCalendarEvent('Illusion',
//           startTime: DateTime(DateTime.now().year, DateTime.now().month,
//               DateTime.now().day, 8, 30),
//           endTime: DateTime(DateTime.now().year, DateTime.now().month,
//               DateTime.now().day, 3, 0),
//           // description: 'A special event',
//           color: Colors.orange),
//     ],
//     DateTime(2023, 1, 16): [
//       CleanCalendarEvent('Start of subject group meeting 1',
//           startTime: DateTime(DateTime.now().year, DateTime.now().month,
//               DateTime.now().day, 8, 30),
//           endTime: DateTime(DateTime.now().year, DateTime.now().month,
//               DateTime.now().day, 3, 0),
//           // description: 'A special event',
//           color: Colors.orange),
//       CleanCalendarEvent('Start of VESIT Premier League',
//           startTime: DateTime(DateTime.now().year, DateTime.now().month,
//               DateTime.now().day, 8, 30),
//           endTime: DateTime(DateTime.now().year, DateTime.now().month,
//               DateTime.now().day, 3, 0),
//           // description: 'A special event',
//           color: Colors.pink),
//     ],
//     DateTime(2023, 1, 21): [
//       CleanCalendarEvent('End of subject group meeting 1',
//           startTime: DateTime(DateTime.now().year, DateTime.now().month,
//               DateTime.now().day, 8, 30),
//           endTime: DateTime(DateTime.now().year, DateTime.now().month,
//               DateTime.now().day, 3, 0),
//           // description: 'A special event',
//           color: Colors.orange),
//       CleanCalendarEvent('End of window period for society activities',
//           startTime: DateTime(DateTime.now().year, DateTime.now().month,
//               DateTime.now().day, 8, 30),
//           endTime: DateTime(DateTime.now().year, DateTime.now().month,
//               DateTime.now().day, 3, 0),
//           // description: 'A special event',
//           color: Colors.pink),
//     ],
//     DateTime(2023, 1, 25): [
//       CleanCalendarEvent('End of VESIT Premier League',
//           startTime: DateTime(DateTime.now().year, DateTime.now().month,
//               DateTime.now().day, 8, 30),
//           endTime: DateTime(DateTime.now().year, DateTime.now().month,
//               DateTime.now().day, 3, 0),
//           // description: 'A special event',
//           color: Colors.orange),
//     ],
//     DateTime(2023, 1, 30): [
//       CleanCalendarEvent('VESIT Premier League : Finals',
//           startTime: DateTime(DateTime.now().year, DateTime.now().month,
//               DateTime.now().day, 8, 30),
//           endTime: DateTime(DateTime.now().year, DateTime.now().month,
//               DateTime.now().day, 3, 0),
//           // description: 'A special event',
//           color: Colors.orange),
//     ],

//     //feb
//     DateTime(2023, 2, 5): [
//       CleanCalendarEvent('Sort : Beach Cleaning Drive',
//           startTime: DateTime(DateTime.now().year, DateTime.now().month,
//               DateTime.now().day, 8, 30),
//           endTime: DateTime(DateTime.now().year, DateTime.now().month,
//               DateTime.now().day, 3, 0),
//           // description: 'A special event',
//           color: Colors.orange),
//     ],
//     DateTime(2023, 2, 7): [
//       CleanCalendarEvent('Bliss Event',
//           startTime: DateTime(DateTime.now().year, DateTime.now().month,
//               DateTime.now().day, 8, 30),
//           endTime: DateTime(DateTime.now().year, DateTime.now().month,
//               DateTime.now().day, 3, 0),
//           // description: 'A special event',
//           color: Colors.orange),
//     ],
//     DateTime(2023, 2, 8): [
//       CleanCalendarEvent('Bliss Event',
//           startTime: DateTime(DateTime.now().year, DateTime.now().month,
//               DateTime.now().day, 8, 30),
//           endTime: DateTime(DateTime.now().year, DateTime.now().month,
//               DateTime.now().day, 3, 0),
//           // description: 'A special event',
//           color: Colors.orange),
//     ],
//     DateTime(2023, 2, 9): [
//       CleanCalendarEvent('First defaulter`s List',
//           startTime: DateTime(DateTime.now().year, DateTime.now().month,
//               DateTime.now().day, 8, 30),
//           endTime: DateTime(DateTime.now().year, DateTime.now().month,
//               DateTime.now().day, 3, 0),
//           // description: 'A special event',
//           color: Colors.orange),
//     ],
//     DateTime(2023, 2, 11): [
//       CleanCalendarEvent('Satyanarayan Pooja',
//           startTime: DateTime(DateTime.now().year, DateTime.now().month,
//               DateTime.now().day, 8, 30),
//           endTime: DateTime(DateTime.now().year, DateTime.now().month,
//               DateTime.now().day, 3, 0),
//           // description: 'A special event',
//           color: Colors.orange),
//     ],
//     DateTime(2023, 2, 13): [
//       CleanCalendarEvent('Umeed',
//           startTime: DateTime(DateTime.now().year, DateTime.now().month,
//               DateTime.now().day, 8, 30),
//           endTime: DateTime(DateTime.now().year, DateTime.now().month,
//               DateTime.now().day, 3, 0),
//           // description: 'A special event',
//           color: Colors.orange),
//     ],
//     DateTime(2023, 2, 15): [
//       CleanCalendarEvent('Internal Assessment Test 1',
//           startTime: DateTime(DateTime.now().year, DateTime.now().month,
//               DateTime.now().day, 8, 30),
//           endTime: DateTime(DateTime.now().year, DateTime.now().month,
//               DateTime.now().day, 3, 0),
//           // description: 'A special event',
//           color: Colors.orange),
//     ],
//     DateTime(2023, 2, 16): [
//       CleanCalendarEvent('Internal Assessment Test 1',
//           startTime: DateTime(DateTime.now().year, DateTime.now().month,
//               DateTime.now().day, 8, 30),
//           endTime: DateTime(DateTime.now().year, DateTime.now().month,
//               DateTime.now().day, 3, 0),
//           // description: 'A special event',
//           color: Colors.orange),
//     ],
//     DateTime(2023, 2, 17): [
//       CleanCalendarEvent('Internal Assessment Test 1',
//           startTime: DateTime(DateTime.now().year, DateTime.now().month,
//               DateTime.now().day, 8, 30),
//           endTime: DateTime(DateTime.now().year, DateTime.now().month,
//               DateTime.now().day, 3, 0),
//           // description: 'A special event',
//           color: Colors.orange),
//     ],
//     DateTime(2023, 2, 20): [
//       CleanCalendarEvent('Internal Assessment Test 1',
//           startTime: DateTime(DateTime.now().year, DateTime.now().month,
//               DateTime.now().day, 8, 30),
//           endTime: DateTime(DateTime.now().year, DateTime.now().month,
//               DateTime.now().day, 3, 0),
//           // description: 'A special event',
//           color: Colors.orange),
//     ],
//     DateTime(2023, 2, 22): [
//       CleanCalendarEvent('Blood Donation Drive',
//           startTime: DateTime(DateTime.now().year, DateTime.now().month,
//               DateTime.now().day, 8, 30),
//           endTime: DateTime(DateTime.now().year, DateTime.now().month,
//               DateTime.now().day, 3, 0),
//           // description: 'A special event',
//           color: Colors.orange),
//     ],
//     DateTime(2023, 2, 23): [
//       CleanCalendarEvent('Praxis',
//           startTime: DateTime(DateTime.now().year, DateTime.now().month,
//               DateTime.now().day, 8, 30),
//           endTime: DateTime(DateTime.now().year, DateTime.now().month,
//               DateTime.now().day, 3, 0),
//           // description: 'A special event',
//           color: Colors.orange),
//       CleanCalendarEvent('Start of group advisor meeting 1',
//           startTime: DateTime(DateTime.now().year, DateTime.now().month,
//               DateTime.now().day, 8, 30),
//           endTime: DateTime(DateTime.now().year, DateTime.now().month,
//               DateTime.now().day, 3, 0),
//           // description: 'A special event',
//           color: Colors.pink),
//     ],
//     DateTime(2023, 2, 24): [
//       CleanCalendarEvent('Praxis',
//           startTime: DateTime(DateTime.now().year, DateTime.now().month,
//               DateTime.now().day, 8, 30),
//           endTime: DateTime(DateTime.now().year, DateTime.now().month,
//               DateTime.now().day, 3, 0),
//           // description: 'A special event',
//           color: Colors.orange),
//     ],
//     DateTime(2023, 2, 25): [
//       CleanCalendarEvent('Honor/Minor course Test 1',
//           startTime: DateTime(DateTime.now().year, DateTime.now().month,
//               DateTime.now().day, 8, 30),
//           endTime: DateTime(DateTime.now().year, DateTime.now().month,
//               DateTime.now().day, 3, 0),
//           // description: 'A special event',
//           color: Colors.orange),
//       CleanCalendarEvent('Start of outdoor Sphurti',
//           startTime: DateTime(DateTime.now().year, DateTime.now().month,
//               DateTime.now().day, 8, 30),
//           endTime: DateTime(DateTime.now().year, DateTime.now().month,
//               DateTime.now().day, 3, 0),
//           // description: 'A special event',
//           color: Colors.pink),
//       CleanCalendarEvent('Start of VESIT Cricket League',
//           startTime: DateTime(DateTime.now().year, DateTime.now().month,
//               DateTime.now().day, 8, 30),
//           endTime: DateTime(DateTime.now().year, DateTime.now().month,
//               DateTime.now().day, 3, 0),
//           // description: 'A special event',
//           color: Colors.purple),
//       CleanCalendarEvent('Alumni Day',
//           startTime: DateTime(DateTime.now().year, DateTime.now().month,
//               DateTime.now().day, 8, 30),
//           endTime: DateTime(DateTime.now().year, DateTime.now().month,
//               DateTime.now().day, 3, 0),
//           // description: 'A special event',
//           color: Colors.green),
//     ],
//     DateTime(2023, 2, 27): [
//       CleanCalendarEvent('Honor/Minor course Test 1',
//           startTime: DateTime(DateTime.now().year, DateTime.now().month,
//               DateTime.now().day, 8, 30),
//           endTime: DateTime(DateTime.now().year, DateTime.now().month,
//               DateTime.now().day, 3, 0),
//           // description: 'A special event',
//           color: Colors.orange),
//       CleanCalendarEvent('Marathi Rajya Bhasha Diwas',
//           startTime: DateTime(DateTime.now().year, DateTime.now().month,
//               DateTime.now().day, 8, 30),
//           endTime: DateTime(DateTime.now().year, DateTime.now().month,
//               DateTime.now().day, 3, 0),
//           // description: 'A special event',
//           color: Colors.pink),
//       CleanCalendarEvent('Photo Session',
//           startTime: DateTime(DateTime.now().year, DateTime.now().month,
//               DateTime.now().day, 8, 30),
//           endTime: DateTime(DateTime.now().year, DateTime.now().month,
//               DateTime.now().day, 3, 0),
//           // description: 'A special event',
//           color: Colors.purple),
//     ],

//     DateTime(2023, 2, 28): [
//       CleanCalendarEvent('End of group advisor meeting 1',
//           startTime: DateTime(DateTime.now().year, DateTime.now().month,
//               DateTime.now().day, 8, 30),
//           endTime: DateTime(DateTime.now().year, DateTime.now().month,
//               DateTime.now().day, 3, 0),
//           // description: 'A special event',
//           color: Colors.orange),
//       CleanCalendarEvent('Honor/Minor course Test 1',
//           startTime: DateTime(DateTime.now().year, DateTime.now().month,
//               DateTime.now().day, 8, 30),
//           endTime: DateTime(DateTime.now().year, DateTime.now().month,
//               DateTime.now().day, 3, 0),
//           // description: 'A special event',
//           color: Colors.pink),
//       CleanCalendarEvent('Open Day 1',
//           startTime: DateTime(DateTime.now().year, DateTime.now().month,
//               DateTime.now().day, 8, 30),
//           endTime: DateTime(DateTime.now().year, DateTime.now().month,
//               DateTime.now().day, 3, 0),
//           // description: 'A special event',
//           color: Colors.purple),
//     ],

//     //march
//     DateTime(2023, 3, 1): [
//       CleanCalendarEvent('ATKT Exams',
//           startTime: DateTime(DateTime.now().year, DateTime.now().month,
//               DateTime.now().day, 8, 30),
//           endTime: DateTime(DateTime.now().year, DateTime.now().month,
//               DateTime.now().day, 3, 0),
//           // description: 'A special event',
//           color: Colors.orange),
//     ],
//     DateTime(2023, 3, 2): [
//       CleanCalendarEvent('ATKT Exams',
//           startTime: DateTime(DateTime.now().year, DateTime.now().month,
//               DateTime.now().day, 8, 30),
//           endTime: DateTime(DateTime.now().year, DateTime.now().month,
//               DateTime.now().day, 3, 0),
//           // description: 'A special event',
//           color: Colors.orange),
//     ],
//     DateTime(2023, 3, 3): [
//       CleanCalendarEvent('ATKT Exams',
//           startTime: DateTime(DateTime.now().year, DateTime.now().month,
//               DateTime.now().day, 8, 30),
//           endTime: DateTime(DateTime.now().year, DateTime.now().month,
//               DateTime.now().day, 3, 0),
//           // description: 'A special event',
//           color: Colors.orange),
//     ],
//     DateTime(2023, 3, 10): [
//       CleanCalendarEvent('Second defaulter`s List',
//           startTime: DateTime(DateTime.now().year, DateTime.now().month,
//               DateTime.now().day, 8, 30),
//           endTime: DateTime(DateTime.now().year, DateTime.now().month,
//               DateTime.now().day, 3, 0),
//           // description: 'A special event',
//           color: Colors.orange),
//       CleanCalendarEvent('Octaves',
//           startTime: DateTime(DateTime.now().year, DateTime.now().month,
//               DateTime.now().day, 8, 30),
//           endTime: DateTime(DateTime.now().year, DateTime.now().month,
//               DateTime.now().day, 3, 0),
//           // description: 'A special event',
//           color: Colors.pink),
//     ],
//     DateTime(2023, 3, 13): [
//       CleanCalendarEvent('LBS Utsav',
//           startTime: DateTime(DateTime.now().year, DateTime.now().month,
//               DateTime.now().day, 8, 30),
//           endTime: DateTime(DateTime.now().year, DateTime.now().month,
//               DateTime.now().day, 3, 0),
//           // description: 'A special event',
//           color: Colors.orange),
//     ],
//     DateTime(2023, 3, 14): [
//       CleanCalendarEvent('LBS Utsav',
//           startTime: DateTime(DateTime.now().year, DateTime.now().month,
//               DateTime.now().day, 8, 30),
//           endTime: DateTime(DateTime.now().year, DateTime.now().month,
//               DateTime.now().day, 3, 0),
//           // description: 'A special event',
//           color: Colors.orange),
//     ],
//     DateTime(2023, 3, 15): [
//       CleanCalendarEvent('End of outdoor Sphurti',
//           startTime: DateTime(DateTime.now().year, DateTime.now().month,
//               DateTime.now().day, 8, 30),
//           endTime: DateTime(DateTime.now().year, DateTime.now().month,
//               DateTime.now().day, 3, 0),
//           // description: 'A special event',
//           color: Colors.orange),
//       CleanCalendarEvent('End of VESIT Cricket League',
//           startTime: DateTime(DateTime.now().year, DateTime.now().month,
//               DateTime.now().day, 8, 30),
//           endTime: DateTime(DateTime.now().year, DateTime.now().month,
//               DateTime.now().day, 3, 0),
//           // description: 'A special event',
//           color: Colors.pink),
//     ],
//     DateTime(2023, 3, 16): [
//       CleanCalendarEvent('Utsav and Annual Day',
//           startTime: DateTime(DateTime.now().year, DateTime.now().month,
//               DateTime.now().day, 8, 30),
//           endTime: DateTime(DateTime.now().year, DateTime.now().month,
//               DateTime.now().day, 3, 0),
//           // description: 'A special event',
//           color: Colors.orange),
//     ],
//     DateTime(2023, 3, 17): [
//       CleanCalendarEvent('Utsav and Annual Day',
//           startTime: DateTime(DateTime.now().year, DateTime.now().month,
//               DateTime.now().day, 8, 30),
//           endTime: DateTime(DateTime.now().year, DateTime.now().month,
//               DateTime.now().day, 3, 0),
//           // description: 'A special event',
//           color: Colors.orange),
//     ],
//     DateTime(2023, 3, 20): [
//       CleanCalendarEvent('Technology Day',
//           startTime: DateTime(DateTime.now().year, DateTime.now().month,
//               DateTime.now().day, 8, 30),
//           endTime: DateTime(DateTime.now().year, DateTime.now().month,
//               DateTime.now().day, 3, 0),
//           // description: 'A special event',
//           color: Colors.orange),
//     ],
//     DateTime(2023, 3, 23): [
//       CleanCalendarEvent('Internal Assessment Test 2',
//           startTime: DateTime(DateTime.now().year, DateTime.now().month,
//               DateTime.now().day, 8, 30),
//           endTime: DateTime(DateTime.now().year, DateTime.now().month,
//               DateTime.now().day, 3, 0),
//           // description: 'A special event',
//           color: Colors.orange),
//     ],
//     DateTime(2023, 3, 24): [
//       CleanCalendarEvent('Internal Assessment Test 2',
//           startTime: DateTime(DateTime.now().year, DateTime.now().month,
//               DateTime.now().day, 8, 30),
//           endTime: DateTime(DateTime.now().year, DateTime.now().month,
//               DateTime.now().day, 3, 0),
//           // description: 'A special event',
//           color: Colors.orange),
//     ],
//     DateTime(2023, 3, 25): [
//       CleanCalendarEvent('Internal Assessment Test 2',
//           startTime: DateTime(DateTime.now().year, DateTime.now().month,
//               DateTime.now().day, 8, 30),
//           endTime: DateTime(DateTime.now().year, DateTime.now().month,
//               DateTime.now().day, 3, 0),
//           // description: 'A special event',
//           color: Colors.orange),
//     ],
//     DateTime(2023, 3, 27): [
//       CleanCalendarEvent('Internal Assessment Test 2',
//           startTime: DateTime(DateTime.now().year, DateTime.now().month,
//               DateTime.now().day, 8, 30),
//           endTime: DateTime(DateTime.now().year, DateTime.now().month,
//               DateTime.now().day, 3, 0),
//           // description: 'A special event',
//           color: Colors.orange),
//     ],

//     //april
//     DateTime(2023, 4, 5): [
//       CleanCalendarEvent('Internship Mela',
//           startTime: DateTime(DateTime.now().year, DateTime.now().month,
//               DateTime.now().day, 8, 30),
//           endTime: DateTime(DateTime.now().year, DateTime.now().month,
//               DateTime.now().day, 3, 0),
//           // description: 'A special event',
//           color: Colors.orange),
//     ],

//     DateTime(2023, 4, 6): [
//       CleanCalendarEvent('Internship Mela',
//           startTime: DateTime(DateTime.now().year, DateTime.now().month,
//               DateTime.now().day, 8, 30),
//           endTime: DateTime(DateTime.now().year, DateTime.now().month,
//               DateTime.now().day, 3, 0),
//           // description: 'A special event',
//           color: Colors.orange),
//     ],
//     DateTime(2023, 4, 7): [
//       CleanCalendarEvent('Open Day for Test 2',
//           startTime: DateTime(DateTime.now().year, DateTime.now().month,
//               DateTime.now().day, 8, 30),
//           endTime: DateTime(DateTime.now().year, DateTime.now().month,
//               DateTime.now().day, 3, 0),
//           // description: 'A special event',
//           color: Colors.orange),
//     ],
//     DateTime(2023, 4, 8): [
//       CleanCalendarEvent('DAB Meeting',
//           startTime: DateTime(DateTime.now().year, DateTime.now().month,
//               DateTime.now().day, 8, 30),
//           endTime: DateTime(DateTime.now().year, DateTime.now().month,
//               DateTime.now().day, 3, 0),
//           // description: 'A special event',
//           color: Colors.orange),
//     ],
//     DateTime(2023, 4, 10): [
//       CleanCalendarEvent('Critical defaulter`s List',
//           startTime: DateTime(DateTime.now().year, DateTime.now().month,
//               DateTime.now().day, 8, 30),
//           endTime: DateTime(DateTime.now().year, DateTime.now().month,
//               DateTime.now().day, 3, 0),
//           // description: 'A special event',
//           color: Colors.orange),
//       CleanCalendarEvent('Honor/Minor course Test 2',
//           startTime: DateTime(DateTime.now().year, DateTime.now().month,
//               DateTime.now().day, 8, 30),
//           endTime: DateTime(DateTime.now().year, DateTime.now().month,
//               DateTime.now().day, 3, 0),
//           // description: 'A special event',
//           color: Colors.pink),
//     ],
//     DateTime(2023, 4, 11): [
//       CleanCalendarEvent('Honor/Minor course Test 2',
//           startTime: DateTime(DateTime.now().year, DateTime.now().month,
//               DateTime.now().day, 8, 30),
//           endTime: DateTime(DateTime.now().year, DateTime.now().month,
//               DateTime.now().day, 3, 0),
//           // description: 'A special event',
//           color: Colors.orange),
//       CleanCalendarEvent('Prof societies symposium',
//           startTime: DateTime(DateTime.now().year, DateTime.now().month,
//               DateTime.now().day, 8, 30),
//           endTime: DateTime(DateTime.now().year, DateTime.now().month,
//               DateTime.now().day, 3, 0),
//           // description: 'A special event',
//           color: Colors.pink),
//     ],
//     DateTime(2023, 4, 12): [
//       CleanCalendarEvent('Honor/Minor course Test 2',
//           startTime: DateTime(DateTime.now().year, DateTime.now().month,
//               DateTime.now().day, 8, 30),
//           endTime: DateTime(DateTime.now().year, DateTime.now().month,
//               DateTime.now().day, 3, 0),
//           // description: 'A special event',
//           color: Colors.orange),
//       CleanCalendarEvent('Prof societies symposium',
//           startTime: DateTime(DateTime.now().year, DateTime.now().month,
//               DateTime.now().day, 8, 30),
//           endTime: DateTime(DateTime.now().year, DateTime.now().month,
//               DateTime.now().day, 3, 0),
//           // description: 'A special event',
//           color: Colors.pink),
//     ],
//     DateTime(2023, 4, 13): [
//       CleanCalendarEvent('Last Instructional Day (SE, TE, BE)',
//           startTime: DateTime(DateTime.now().year, DateTime.now().month,
//               DateTime.now().day, 8, 30),
//           endTime: DateTime(DateTime.now().year, DateTime.now().month,
//               DateTime.now().day, 3, 0),
//           // description: 'A special event',
//           color: Colors.orange),
//       CleanCalendarEvent('Term Grant records submission',
//           startTime: DateTime(DateTime.now().year, DateTime.now().month,
//               DateTime.now().day, 8, 30),
//           endTime: DateTime(DateTime.now().year, DateTime.now().month,
//               DateTime.now().day, 3, 0),
//           // description: 'A special event',
//           color: Colors.pink),
//       CleanCalendarEvent('Honor/Minor course Test 2',
//           startTime: DateTime(DateTime.now().year, DateTime.now().month,
//               DateTime.now().day, 8, 30),
//           endTime: DateTime(DateTime.now().year, DateTime.now().month,
//               DateTime.now().day, 3, 0),
//           // description: 'A special event',
//           color: Colors.purple),
//       CleanCalendarEvent('Prof societies symposium',
//           startTime: DateTime(DateTime.now().year, DateTime.now().month,
//               DateTime.now().day, 8, 30),
//           endTime: DateTime(DateTime.now().year, DateTime.now().month,
//               DateTime.now().day, 3, 0),
//           // description: 'A special event',
//           color: Colors.green),
//     ],
//     DateTime(2023, 4, 14): [
//       CleanCalendarEvent('Honor/Minor course Test 2',
//           startTime: DateTime(DateTime.now().year, DateTime.now().month,
//               DateTime.now().day, 8, 30),
//           endTime: DateTime(DateTime.now().year, DateTime.now().month,
//               DateTime.now().day, 3, 0),
//           // description: 'A special event',
//           color: Colors.orange),
//       CleanCalendarEvent('Start of submissions and mock vivas',
//           startTime: DateTime(DateTime.now().year, DateTime.now().month,
//               DateTime.now().day, 8, 30),
//           endTime: DateTime(DateTime.now().year, DateTime.now().month,
//               DateTime.now().day, 3, 0),
//           // description: 'A special event',
//           color: Colors.pink),
//       CleanCalendarEvent('Subject group advisors meetings',
//           startTime: DateTime(DateTime.now().year, DateTime.now().month,
//               DateTime.now().day, 8, 30),
//           endTime: DateTime(DateTime.now().year, DateTime.now().month,
//               DateTime.now().day, 3, 0),
//           // description: 'A special event',
//           color: Colors.purple),
//       CleanCalendarEvent('Prof societies symposium',
//           startTime: DateTime(DateTime.now().year, DateTime.now().month,
//               DateTime.now().day, 8, 30),
//           endTime: DateTime(DateTime.now().year, DateTime.now().month,
//               DateTime.now().day, 3, 0),
//           // description: 'A special event',
//           color: Colors.green),
//     ],
//     DateTime(2023, 4, 15): [
//       CleanCalendarEvent('MCA Farewell',
//           startTime: DateTime(DateTime.now().year, DateTime.now().month,
//               DateTime.now().day, 8, 30),
//           endTime: DateTime(DateTime.now().year, DateTime.now().month,
//               DateTime.now().day, 3, 0),
//           // description: 'A special event',
//           color: Colors.orange),
//     ],
//     DateTime(2023, 4, 17): [
//       CleanCalendarEvent('Internal Assessment Test 3',
//           startTime: DateTime(DateTime.now().year, DateTime.now().month,
//               DateTime.now().day, 8, 30),
//           endTime: DateTime(DateTime.now().year, DateTime.now().month,
//               DateTime.now().day, 3, 0),
//           // description: 'A special event',
//           color: Colors.orange),
//     ],
//     DateTime(2023, 4, 18): [
//       CleanCalendarEvent('Internal Assessment Test 3',
//           startTime: DateTime(DateTime.now().year, DateTime.now().month,
//               DateTime.now().day, 8, 30),
//           endTime: DateTime(DateTime.now().year, DateTime.now().month,
//               DateTime.now().day, 3, 0),
//           // description: 'A special event',
//           color: Colors.orange),
//     ],
//     DateTime(2023, 4, 19): [
//       CleanCalendarEvent('Internal Assessment Test 3',
//           startTime: DateTime(DateTime.now().year, DateTime.now().month,
//               DateTime.now().day, 8, 30),
//           endTime: DateTime(DateTime.now().year, DateTime.now().month,
//               DateTime.now().day, 3, 0),
//           // description: 'A special event',
//           color: Colors.orange),
//     ],
//     DateTime(2023, 4, 20): [
//       CleanCalendarEvent('Internal Assessment Test 3',
//           startTime: DateTime(DateTime.now().year, DateTime.now().month,
//               DateTime.now().day, 8, 30),
//           endTime: DateTime(DateTime.now().year, DateTime.now().month,
//               DateTime.now().day, 3, 0),
//           // description: 'A special event',
//           color: Colors.orange),
//     ],
//     DateTime(2023, 4, 21): [
//       CleanCalendarEvent('BE Farewell',
//           startTime: DateTime(DateTime.now().year, DateTime.now().month,
//               DateTime.now().day, 8, 30),
//           endTime: DateTime(DateTime.now().year, DateTime.now().month,
//               DateTime.now().day, 3, 0),
//           // description: 'A special event',
//           color: Colors.orange),
//       CleanCalendarEvent('End of submissions and mock vivas',
//           startTime: DateTime(DateTime.now().year, DateTime.now().month,
//               DateTime.now().day, 8, 30),
//           endTime: DateTime(DateTime.now().year, DateTime.now().month,
//               DateTime.now().day, 3, 0),
//           // description: 'A special event',
//           color: Colors.pink),
//     ],
//     DateTime(2023, 4, 22): [
//       CleanCalendarEvent('Open Day for Test 3',
//           startTime: DateTime(DateTime.now().year, DateTime.now().month,
//               DateTime.now().day, 8, 30),
//           endTime: DateTime(DateTime.now().year, DateTime.now().month,
//               DateTime.now().day, 3, 0),
//           // description: 'A special event',
//           color: Colors.orange),
//       CleanCalendarEvent('Term End',
//           startTime: DateTime(DateTime.now().year, DateTime.now().month,
//               DateTime.now().day, 8, 30),
//           endTime: DateTime(DateTime.now().year, DateTime.now().month,
//               DateTime.now().day, 3, 0),
//           // description: 'A special event',
//           color: Colors.pink),
//     ],
//     DateTime(2023, 4, 24): [
//       CleanCalendarEvent('Start of Oral/Practical Examination',
//           startTime: DateTime(DateTime.now().year, DateTime.now().month,
//               DateTime.now().day, 8, 30),
//           endTime: DateTime(DateTime.now().year, DateTime.now().month,
//               DateTime.now().day, 3, 0),
//           // description: 'A special event',
//           color: Colors.orange),
//     ],

//     //May
//     DateTime(2023, 5, 4): [
//       CleanCalendarEvent('End of Oral/Practical Examination',
//           startTime: DateTime(DateTime.now().year, DateTime.now().month,
//               DateTime.now().day, 8, 30),
//           endTime: DateTime(DateTime.now().year, DateTime.now().month,
//               DateTime.now().day, 3, 0),
//           // description: 'A special event',
//           color: Colors.orange),
//     ],
//     DateTime(2023, 5, 10): [
//       CleanCalendarEvent('Theory Examination Start: Sem IV, VI, VIII',
//           startTime: DateTime(DateTime.now().year, DateTime.now().month,
//               DateTime.now().day, 8, 30),
//           endTime: DateTime(DateTime.now().year, DateTime.now().month,
//               DateTime.now().day, 3, 0),
//           // description: 'A special event',
//           color: Colors.orange),
//     ],
//     DateTime(2023, 5, 23): [
//       CleanCalendarEvent('Theory Examination End: Sem IV, VI, VIII',
//           startTime: DateTime(DateTime.now().year, DateTime.now().month,
//               DateTime.now().day, 8, 30),
//           endTime: DateTime(DateTime.now().year, DateTime.now().month,
//               DateTime.now().day, 3, 0),
//           // description: 'A special event',
//           color: Colors.orange),
//     ],
//     DateTime(2023, 5, 24): [
//       CleanCalendarEvent('Theory Examination Start: Sem III, V, VII',
//           startTime: DateTime(DateTime.now().year, DateTime.now().month,
//               DateTime.now().day, 8, 30),
//           endTime: DateTime(DateTime.now().year, DateTime.now().month,
//               DateTime.now().day, 3, 0),
//           // description: 'A special event',
//           color: Colors.orange),
//     ],

//     //june
//     DateTime(2023, 6, 6): [
//       CleanCalendarEvent('Theory Examination End: Sem III, V, VII',
//           startTime: DateTime(DateTime.now().year, DateTime.now().month,
//               DateTime.now().day, 8, 30),
//           endTime: DateTime(DateTime.now().year, DateTime.now().month,
//               DateTime.now().day, 3, 0),
//           // description: 'A special event',
//           color: Colors.orange),
//     ],

//     //july
//     DateTime(2023, 7, 10): [
//       CleanCalendarEvent('Commencement of New Term',
//           startTime: DateTime(DateTime.now().year, DateTime.now().month,
//               DateTime.now().day, 8, 30),
//           endTime: DateTime(DateTime.now().year, DateTime.now().month,
//               DateTime.now().day, 3, 0),
//           // description: 'A special event',
//           color: Colors.orange),
//     ],
//   };

//   void _handleData(date) {
//     setState(() {
//       selectedDay = date;
//       // selectedEvent = events[selectedDay] ?? [];
//     });
//     // print(selectedDay);
//   }

//   @override
//   void initState() {
//     // selectedEvent = events[selectedDay] ?? [];
//     super.initState();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         leading: IconButton(
//           icon: Icon(Icons.arrow_back, color: Colors.black),
//           onPressed: () => Navigator.of(context).pop(),
//         ),
//         backgroundColor: Colors.transparent,
//         elevation: 0,
//         title: Text(
//           'CALENDER',
//           style: TextStyle(
//               fontFamily: 'Ubuntu_Bold', fontSize: 30, color: Colors.black),
//         ),
//         centerTitle: true,
//       ),
//       body: SafeArea(
//         child: Calendar(
//           startOnMonday: true,
//           selectedColor: Color(0xFF00467F),
//           todayColor: Color(0xFFFE735D),
//           eventColor: Colors.black,
//           eventDoneColor: Colors.green,
//           // bottomBarColor: Colors.deepOrange,
//           // onRangeSelected: (range) {
//           //   print('selected Day ${range.from},${range.to}');
//           // },
//           onDateSelected: (date) {
//             return _handleData(date);
//           },
//           events: events,
//           isExpanded: true,
//           // dayOfWeekStyle: TextStyle(
//           //   fontSize: 15,
//           //   color: Colors.black12,
//           //   fontWeight: FontWeight.w100,
//           // ),
//           dayOfWeekStyle: TextStyle(color: Color(0xFF00467F)),

//           bottomBarTextStyle: TextStyle(
//             color: Colors.white,
//           ),
//           hideBottomBar: false,
//           hideTodayIcon: true,
//           hideArrows: false,
//           weekDays: ['Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat', 'Sun'],
//         ),
//       ),
//       bottomNavigationBar: BottomNavigationBar(
//         backgroundColor: const Color(0xff00467F),
//         items: const <BottomNavigationBarItem>[
//           BottomNavigationBarItem(
//             icon: Icon(
//               Icons.contact_phone,
//               color: Colors.white,
//             ),
//             label: 'Contact',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(
//               Icons.home,
//               color: Colors.white,
//             ),
//             label: 'Home',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(
//               Icons.person,
//               color: Colors.white,
//             ),
//             label: 'Profile',
//           ),
//         ],
//         unselectedLabelStyle:
//             const TextStyle(color: Colors.white, fontSize: 14),
//         currentIndex: _selectedIndex,
//         selectedItemColor: Colors.white,
//         unselectedItemColor: Colors.white,
//         onTap: _onItemTapped,
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:flutter_clean_calendar/flutter_clean_calendar.dart';
import 'package:isa/main_contactus.dart';

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

  DateTime selectedDay = DateTime.now();
  DateTime selectedEvent = DateTime.now();
  // List <CleanCalendarEvent> selectedEvent  ;

  final Map<DateTime, List<CleanCalendarEvent>> events = {
  
     //july
    DateTime(2023, 7, 10): [
      CleanCalendarEvent('Commencement of New Term',
          startTime: DateTime(DateTime.now().year, DateTime.now().month,
              DateTime.now().day, 9, 0),
          endTime: DateTime(DateTime.now().year, DateTime.now().month,
              DateTime.now().day, 5, 0),
          // description: 'A special event',
          color: Colors.orange),
    ],

 //july
    DateTime(2023, 7, 21): [
      CleanCalendarEvent('Start Of Class Council Election',
          startTime: DateTime(DateTime.now().year, DateTime.now().month,
              DateTime.now().day, 9, 0),
          endTime: DateTime(DateTime.now().year, DateTime.now().month,
              DateTime.now().day, 5, 0),
          // description: 'A special event',
          color: Colors.orange),
    ],
 //july
    DateTime(2023, 7, 28): [
      CleanCalendarEvent('End Of Class Council Election',
          startTime: DateTime(DateTime.now().year, DateTime.now().month,
              DateTime.now().day, 9, 0),
          endTime: DateTime(DateTime.now().year, DateTime.now().month,
              DateTime.now().day, 5, 0),
          // description: 'A special event',
          color: Colors.orange),
    ],

 //july
    DateTime(2023, 7, 28): [
      CleanCalendarEvent('Student Council Election',
          startTime: DateTime(DateTime.now().year, DateTime.now().month,
              DateTime.now().day, 9, 0),
          endTime: DateTime(DateTime.now().year, DateTime.now().month,
              DateTime.now().day, 5, 0),
          // description: 'A special event',
          color: Colors.orange),
    ],

 //july
    DateTime(2023, 7, 23): [
      CleanCalendarEvent(' Start Of Professional Society Council Interview',
          startTime: DateTime(DateTime.now().year, DateTime.now().month,
              DateTime.now().day, 9, 0),
          endTime: DateTime(DateTime.now().year, DateTime.now().month,
              DateTime.now().day, 5, 0),
          // description: 'A special event',
          color: Colors.orange),
    ],

 //august
    DateTime(2023, 8, 5): [
      CleanCalendarEvent('End Of Professional Society Council Interview',
          startTime: DateTime(DateTime.now().year, DateTime.now().month,
              DateTime.now().day, 9, 0),
          endTime: DateTime(DateTime.now().year, DateTime.now().month,
              DateTime.now().day, 5, 0),
          // description: 'A special event',
          color: Colors.orange),
    ],

 //august
    DateTime(2023, 8, 11): [
      CleanCalendarEvent('Music Event',
          startTime: DateTime(DateTime.now().year, DateTime.now().month,
              DateTime.now().day, 9, 0),
          endTime: DateTime(DateTime.now().year, DateTime.now().month,
              DateTime.now().day, 5, 0),
          // description: 'A special event',
          color: Colors.orange),
    ],

 //august
    DateTime(2023, 8, 14): [
      CleanCalendarEvent('First Defaulter List',
          startTime: DateTime(DateTime.now().year, DateTime.now().month,
              DateTime.now().day, 9, 0),
          endTime: DateTime(DateTime.now().year, DateTime.now().month,
              DateTime.now().day, 5, 0),
          // description: 'A special event',
          color: Colors.orange),
    ],

 //august
    DateTime(2023, 8, 21): [
      CleanCalendarEvent('Start Of Group Advisory Meeting',
          startTime: DateTime(DateTime.now().year, DateTime.now().month,
              DateTime.now().day, 9, 0),
          endTime: DateTime(DateTime.now().year, DateTime.now().month,
              DateTime.now().day, 5, 0),
          // description: 'A special event',
          color: Colors.orange),
    ],

 //august
    DateTime(2023, 8, 25): [
      CleanCalendarEvent('End Of Group Advisory Meeting',
          startTime: DateTime(DateTime.now().year, DateTime.now().month,
              DateTime.now().day, 9, 0),
          endTime: DateTime(DateTime.now().year, DateTime.now().month,
              DateTime.now().day, 5, 0),
          // description: 'A special event',
          color: Colors.orange),
    ],


 //september
    DateTime(2023, 9, 4): [
      CleanCalendarEvent('Start Of Mid Term Test',
          startTime: DateTime(DateTime.now().year, DateTime.now().month,
              DateTime.now().day, 9, 0),
          endTime: DateTime(DateTime.now().year, DateTime.now().month,
              DateTime.now().day, 5, 0),
          // description: 'A special event',
          color: Colors.orange),
    ],

 //september
    DateTime(2023, 9, 5): [
      CleanCalendarEvent('Teachers Day',
          startTime: DateTime(DateTime.now().year, DateTime.now().month,
              DateTime.now().day, 9, 0),
          endTime: DateTime(DateTime.now().year, DateTime.now().month,
              DateTime.now().day, 5, 0),
          // description: 'A special event',
          color: Colors.orange),
    ],

 //september
    DateTime(2023, 9, 8): [
      CleanCalendarEvent('End Of Mid Term Test',
          startTime: DateTime(DateTime.now().year, DateTime.now().month,
              DateTime.now().day, 9, 0),
          endTime: DateTime(DateTime.now().year, DateTime.now().month,
              DateTime.now().day, 5, 0),
          // description: 'A special event',
          color: Colors.orange),
    ],

 //september
    DateTime(2023, 9, 11): [
      CleanCalendarEvent('Start Of Honour/Minor Course Test',
          startTime: DateTime(DateTime.now().year, DateTime.now().month,
              DateTime.now().day, 9, 0),
          endTime: DateTime(DateTime.now().year, DateTime.now().month,
              DateTime.now().day, 5, 0),
          // description: 'A special event',
          color: Colors.orange),
    ],

//september
    DateTime(2023, 9, 15): [
      CleanCalendarEvent('Open Day:-Mid Term Test',
          startTime: DateTime(DateTime.now().year, DateTime.now().month,
              DateTime.now().day, 9, 0),
          endTime: DateTime(DateTime.now().year, DateTime.now().month,
              DateTime.now().day, 5, 0),
          // description: 'A special event',
          color: Colors.orange),
    ],


 //september
    DateTime(2023, 9, 16): [
      CleanCalendarEvent('End Of Honour/Minor Course Test',
          startTime: DateTime(DateTime.now().year, DateTime.now().month,
              DateTime.now().day, 9, 0),
          endTime: DateTime(DateTime.now().year, DateTime.now().month,
              DateTime.now().day, 5, 0),
          // description: 'A special event',
          color: Colors.orange),
    ],

 //september
    DateTime(2023, 9, 18): [
      CleanCalendarEvent('Second Defaulter List',
          startTime: DateTime(DateTime.now().year, DateTime.now().month,
              DateTime.now().day, 9, 0),
          endTime: DateTime(DateTime.now().year, DateTime.now().month,
              DateTime.now().day, 5, 0),
          // description: 'A special event',
          color: Colors.orange),
    ],

 //september
    DateTime(2023, 9, 19): [
      CleanCalendarEvent('Start Of Ganpati Festival Holidays',
          startTime: DateTime(DateTime.now().year, DateTime.now().month,
              DateTime.now().day, 9, 0),
          endTime: DateTime(DateTime.now().year, DateTime.now().month,
              DateTime.now().day, 5, 0),
          // description: 'A special event',
          color: Colors.orange),
    ],

 //september
    DateTime(2023, 9, 23): [
      CleanCalendarEvent('End Of Ganpati Festival Holidays',
          startTime: DateTime(DateTime.now().year, DateTime.now().month,
              DateTime.now().day, 9, 0),
          endTime: DateTime(DateTime.now().year, DateTime.now().month,
              DateTime.now().day, 5, 0),
          // description: 'A special event',
          color: Colors.orange),
    ],

 //september
    DateTime(2023, 9, 29): [
      CleanCalendarEvent('Open Day-Honour/Minor Course',
          startTime: DateTime(DateTime.now().year, DateTime.now().month,
              DateTime.now().day, 9, 0),
          endTime: DateTime(DateTime.now().year, DateTime.now().month,
              DateTime.now().day, 5, 0),
          // description: 'A special event',
          color: Colors.orange),
    ],

 //october
    DateTime(2023, 10, 4): [
      CleanCalendarEvent('Critical Defaulter List',
          startTime: DateTime(DateTime.now().year, DateTime.now().month,
              DateTime.now().day, 9, 0),
          endTime: DateTime(DateTime.now().year, DateTime.now().month,
              DateTime.now().day, 5, 0),
          // description: 'A special event',
          color: Colors.orange),
    ],

 //october
    DateTime(2023, 10, 16): [
      CleanCalendarEvent('World Student Day',
          startTime: DateTime(DateTime.now().year, DateTime.now().month,
              DateTime.now().day, 9, 0),
          endTime: DateTime(DateTime.now().year, DateTime.now().month,
              DateTime.now().day, 5, 0),
          // description: 'A special event',
          color: Colors.orange),
    ],

 //october
    DateTime(2023, 10, 21): [
      CleanCalendarEvent('Term End And Last Instrunctional Day',
          startTime: DateTime(DateTime.now().year, DateTime.now().month,
              DateTime.now().day, 9, 0),
          endTime: DateTime(DateTime.now().year, DateTime.now().month,
              DateTime.now().day, 5, 0),
          // description: 'A special event',
          color: Colors.orange),
    ],

 //october
    DateTime(2023, 10, 26): [
      CleanCalendarEvent('Start Of Theory Examination',
          startTime: DateTime(DateTime.now().year, DateTime.now().month,
              DateTime.now().day, 9, 0),
          endTime: DateTime(DateTime.now().year, DateTime.now().month,
              DateTime.now().day, 5, 0),
          // description: 'A special event',
          color: Colors.orange),
    ],

 //november
    DateTime(2023, 11, 8): [
      CleanCalendarEvent('End Of Theory Examination',
          startTime: DateTime(DateTime.now().year, DateTime.now().month,
              DateTime.now().day, 9, 0),
          endTime: DateTime(DateTime.now().year, DateTime.now().month,
              DateTime.now().day, 5, 0),
          // description: 'A special event',
          color: Colors.orange),
    ],

 //november
    DateTime(2023, 11, 21): [
      CleanCalendarEvent('Provisional Result',
          startTime: DateTime(DateTime.now().year, DateTime.now().month,
              DateTime.now().day, 9, 0),
          endTime: DateTime(DateTime.now().year, DateTime.now().month,
              DateTime.now().day, 5, 0),
          // description: 'A special event',
          color: Colors.orange),
    ],

 //november
    DateTime(2023, 11, 22): [
      CleanCalendarEvent('Open Day',
          startTime: DateTime(DateTime.now().year, DateTime.now().month,
              DateTime.now().day, 9, 0),
          endTime: DateTime(DateTime.now().year, DateTime.now().month,
              DateTime.now().day, 5, 0),
          // description: 'A special event',
          color: Colors.orange),
    ],

 //november
    DateTime(2023, 11, 30): [
      CleanCalendarEvent('Display Of Final ESE Result',
          startTime: DateTime(DateTime.now().year, DateTime.now().month,
              DateTime.now().day, 9, 0),
          endTime: DateTime(DateTime.now().year, DateTime.now().month,
              DateTime.now().day, 5, 0),
          // description: 'A special event',
          color: Colors.orange),
    ],

 //december
    DateTime(2023, 12, 4): [
      CleanCalendarEvent('Start Of Re-exam For ESE',
          startTime: DateTime(DateTime.now().year, DateTime.now().month,
              DateTime.now().day, 9, 0),
          endTime: DateTime(DateTime.now().year, DateTime.now().month,
              DateTime.now().day, 5, 0),
          // description: 'A special event',
          color: Colors.orange),
    ],

 //december
    DateTime(2023, 12, 15): [
      CleanCalendarEvent('End Of Re-exam For ESE',
          startTime: DateTime(DateTime.now().year, DateTime.now().month,
              DateTime.now().day, 9, 0),
          endTime: DateTime(DateTime.now().year, DateTime.now().month,
              DateTime.now().day, 5, 0),
          // description: 'A special event',
          color: Colors.orange),
    ],

 //december
    DateTime(2023, 12, 22): [
      CleanCalendarEvent('Result Of Re-exam For ESE',
          startTime: DateTime(DateTime.now().year, DateTime.now().month,
              DateTime.now().day, 9, 0),
          endTime: DateTime(DateTime.now().year, DateTime.now().month,
              DateTime.now().day, 5, 0),
          // description: 'A special event',
          color: Colors.orange),
    ],

//jan
    DateTime(2024, 1, 8): [
      CleanCalendarEvent('Beginning of the Term : UG program',
          startTime: DateTime(DateTime.now().year, DateTime.now().month,
              DateTime.now().day, 9, 0),
          endTime: DateTime(DateTime.now().year, DateTime.now().month,
              DateTime.now().day, 5, 0),
          // description: 'A special event',
          color: Colors.orange),
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
              fontFamily: 'Ubuntu_Bold', fontSize: 30, color: Colors.black),
        ),
        centerTitle: true,
      ),
      body: SafeArea(
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


