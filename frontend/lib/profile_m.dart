// // ignore_for_file: prefer_const_constructors

// import 'package:flutter/material.dart';
// import 'package:flutter/rendering.dart';

// class profile_members extends StatelessWidget {
//   // This widget is the root of your application.

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       theme: ThemeData(
//         fontFamily: 'Voces',
//       ),
//       home: profile_m(),
//     );
//   }
// }

// class profile_m extends StatefulWidget {
//   @override
//   _profile_mState createState() => _profile_mState();
// }

// class _profile_mState extends State<profile_m> {
//   @override
//   Widget build(BuildContext context) {
//     // Size size = MediaQuery.of(context).size;
//     return Scaffold(
//       body: Container(
//         decoration: BoxDecoration(
//           image: DecorationImage(
//             image: AssetImage("assets/images/ProfileBg.png"),
//             fit: BoxFit.fill,
//           ),
//         ),
//         child: Stack(
//           alignment: Alignment.center,
//           children: <Widget>[
//             //Photo of user
//             Positioned(
//               top: MediaQuery.of(context).size.height * 0.15,
//               child: Container(
//                 width: MediaQuery.of(context).size.width * 0.33,
//                 height: MediaQuery.of(context).size.height * 0.22,
//                 decoration: BoxDecoration(
//                     image: DecorationImage(
//                       image: AssetImage("assets/images/TestImg.png"),
//                       fit: BoxFit.fill,
//                     ),
//                     borderRadius: BorderRadius.all(Radius.circular(5))),
//               ),
//             ),

//             //Photo ka background
//             Positioned(
//               top: MediaQuery.of(context).size.height * 0.15,
//               child: Container(
//                 width: MediaQuery.of(context).size.width * 0.35,
//                 height: MediaQuery.of(context).size.height * 0.23,
//                 decoration: BoxDecoration(
//                     border: Border.all(width: 6, color: Color(0xFF00467F)),
//                     borderRadius: BorderRadius.all(Radius.circular(5))),
//               ),
//             ),

//             //  bande ka naam
//             Positioned(
//               top: MediaQuery.of(context).size.height * 0.35,
//               width: MediaQuery.of(context).size.width * 0.95,
//               child: Container(
//                 padding: EdgeInsets.all(40),
//                 height: 120,
//                 width: double.infinity,
//                 child: Center(
//                   child: Text(
//                     'Saritha Tharakan',
//                     style: TextStyle(
//                       fontFamily: 'Voces',
//                       fontSize: 25,
//                     ),
//                   ),
//                 ),
//               ),
//             ),

//             Positioned(
//               top: MediaQuery.of(context).size.height * 0.39,
//               width: MediaQuery.of(context).size.width * 0.95,
//               child: Container(
//                 padding: EdgeInsets.all(40),
//                 height: 120,
//                 width: double.infinity,
//                 child: Center(
//                   child: Text(
//                     'ETRX',
//                     style: TextStyle(
//                       fontFamily: 'Voces',
//                       fontSize: 20,
//                     ),
//                   ),
//                 ),
//               ),
//             ),

//             //Sub heading for email
//             Positioned(
//               top: MediaQuery.of(context).size.height * 0.5,
//               width: MediaQuery.of(context).size.width * 0.95,
//               child: Container(
//                 padding: EdgeInsets.all(10),
//                 height: 120,
//                 width: MediaQuery.of(context).size.width * 0.95,
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: <Widget>[
//                     Text(
//                       'Email',
//                       style: TextStyle(
//                           fontFamily: 'Voces',
//                           color: Color(0xFF8297A8),
//                           fontSize: 25),
//                     ),
//                   ],
//                 ),
//               ),
//             ),

//             // actual bande ka email ID
//             Positioned(
//               top: MediaQuery.of(context).size.height * 0.55,
//               width: MediaQuery.of(context).size.width * 0.95,
//               child: Container(
//                 padding: EdgeInsets.all(10),
//                 height: 120,
//                 width: MediaQuery.of(context).size.width * 0.95,
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: <Widget>[
//                     Text(
//                       '2019saritha.tharakn@ves.ac.in',
//                       maxLines: null,
//                       softWrap: true,
//                       style: TextStyle(
//                           fontFamily: 'Voces',
//                           color: Colors.black,
//                           fontSize: 20),
//                     ),
//                     Icon(Icons.email_outlined, size: 35)
//                   ],
//                 ),
//               ),
//             ),

//             //Subtitle for number
//             Positioned(
//               top: MediaQuery.of(context).size.height * 0.65,
//               width: MediaQuery.of(context).size.width * 0.95,
//               child: Container(
//                 padding: EdgeInsets.all(10),
//                 height: 120,
//                 width: MediaQuery.of(context).size.width * 0.95,
//                 child: Row(
//                   children: <Widget>[
//                     Text(
//                       'Phone',
//                       style: TextStyle(
//                           fontFamily: 'Voces',
//                           color: Color(0xFF8297A8),
//                           fontSize: 25),
//                     )
//                   ],
//                 ),
//               ),
//             ),
//             //Bande ka phone number
//             Positioned(
//               top: MediaQuery.of(context).size.height * 0.70,
//               width: MediaQuery.of(context).size.width * 0.95,
//               child: Container(
//                 padding: EdgeInsets.all(10),
//                 height: 120,
//                 width: MediaQuery.of(context).size.width * 0.95,
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: <Widget>[
//                     Text(
//                       '9146527559',
//                       style: TextStyle(
//                           fontFamily: 'Voces',
//                           color: Colors.black,
//                           fontSize: 20),
//                     ),
//                     Icon(Icons.call_outlined, size: 35),
//                   ],
//                 ),
//               ),
//             ),
//             Positioned(
//               top: MediaQuery.of(context).size.height * 0.85,
//               width: MediaQuery.of(context).size.width * 0.95,
//               child: Container(
//                 padding: EdgeInsets.all(40),
//                 height: 120,
//                 width: MediaQuery.of(context).size.width * 0.95,
//                 child: ElevatedButton(
//                   style: ElevatedButton.styleFrom(
//                     // text: Text(),
//                     primary: Color(0xFF00467F),
//                     padding: EdgeInsets.symmetric(vertical: 10),
//                     elevation: 0,
//                     shape: RoundedRectangleBorder(
//                       borderRadius: BorderRadius.circular(3.0),
//                     ),
//                   ),
//                   onPressed: () {
//                     print('Pressed');
//                   },
//                   child: Text(
//                     'Here! Your QR code',
//                     style: TextStyle(
//                       fontSize: 17,
//                     ),
//                   ),
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
// // Column(
// //             // clipBehavior: Clip.antiAlias,
// //             // alignment: Alignment.center,
// //             children: <Widget>[
// //               Positioned(
// //                 top: MediaQuery.of(context).size.height * 0.3,
// //                 child: Container(
// //                   width: MediaQuery.of(context).size.width * 0.3,
// //                   height: MediaQuery.of(context).size.height * 0.3,
// //                   decoration: BoxDecoration(
// //                     color: Colors.blue,
// //                   ),
// //                 ),
// //               ),
// //             ],
// //           ),



//     //     return Scaffold(
//     //   body: Container(
//     //       height: MediaQuery.of(context).size.height * 0.999,
//     //       width: double.infinity,
//     //       child: Stack(
//     //         alignment: Alignment.center,
//     //         children: <Widget>[
//     //           Positioned(
//     //             top: MediaQuery.of(context).size.height * 0.1,
//     //             child: Image.asset(
//     //               'assets/images/otp_members.gif',
//     //               width: MediaQuery.of(context).size.width * 0.9,
//     //             ),
//     //           ),
//     //         ],
//     //       )),
//     // );