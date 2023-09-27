// // The 'initiatives_main' file will contain all the list and the other code except the gridview. The gridview will be in intiatives.dart , and there will be an import of the models code in initiatives.dart.  And the route will pass the title and description variable to the initdetail.dart file. The initdetail file has to just print it

// // ignore_for_file: prefer_const_constructors

// import 'package:flutter/material.dart';
// import 'initdetail.dart';
// import 'initiatives_main.dart';
// // import 'models/init_model.dart';
// import 'models/initiatives.dart';

// class initiatives extends StatefulWidget {
//   final String access;
//   initiatives(this.access);
//   // final List<init_model> details;
//   // initiatives(this.details);

//   @override
//   _initiativesState createState() => _initiativesState();
// }

// class _initiativesState extends State<initiatives> {
//   final List<init_model> _details = [
//     //Update images here
//     init_model(
//         id: 'I0',
//         title: 'App',
//         desc:
//             'Innsaei (the sea within). As the name suggests, It enables you to search through our own Hardware Inventory and access the Digital Library of ISA-VESIT! Additionally, you can easily acquire workshop and event certificates when registering for all of our college\'s future activities. In other words, we\'ve assembled all the amenities that ISA-VESIT has to offer in this App!',
//         image: "assets/images/innsaei.png"),
//     init_model(
//         id: 'I1',
//         title: 'Website',
//         desc:
//             'Get access to the complete information of all events & workshop, 3D printing Portal, Editorials, Hall Of Fame, Digital Library and much more',
//         image: "assets/images/website.png"),
//     init_model(
//         id: 'I2',
//         title: 'Youtube',
//         desc:
//             'Tune in to watch tutorials & project videos on variety of topics and get the best career guidance from alumni.',
//         image: "assets/images/youtube.png"),
//     init_model(
//         id: 'I3',
//         title: '3D Printer',
//         desc: 'Get your designed 3D models printed on the 3D Printer',
//         image: "assets/images/threeD.png"),
//     init_model(
//         id: 'I4',
//         title: 'Hardware Inventory',
//         desc:
//             'You can now easily get any hardware component required in your project.',
//         image: "assets/images/inventory.png"),
//     init_model(
//         id: 'I5',
//         title: 'Be and Beyond',
//         desc:
//             'A talk show where we interact with prominent VESIT alumni from all over the world working in various fields of their expertise to help you find the right career path',
//         image: "assets/images/benbeyond.png"),
//     init_model(
//         id: 'I6',
//         title: 'IOT Kit',
//         desc: 'We provide hardware components in a package at a low cost!',
//         image: "assets/images/iotKit.png"),
//     init_model(
//         id: 'I7',
//         title: 'Project Oriented Workshops',
//         desc:
//             'Get your projects certified by us and stand a chance to get featured on our Youtube channel & Hall of Fame!',
//         image: "assets/images/pow.png"),
//     init_model(
//         id: 'I8',
//         title: 'Alumni Hub',
//         desc:
//             'Alumni hub is a platform for students to connect and interact with alumni. Students and Alumni can post on the platform and interact with each other. The alumni network helps us with an opportunity to build a foundation of support',
//         image: "assets/images/Alumni_talk.png"),
//     init_model(
//         id: 'I9',
//         title: 'Digital Library',
//         desc:
//             'Get an easy access to all reference books, textbooks & previous year question papersof your subject and competitive exams',
//         image: "assets/images/Digital_library.png"),

//     init_model(
//         id: 'I10',
//         title: 'VR Headset',
//         desc:
//             'Only at ISA-VESIT can you immerse yourself in the realm of virtual reality with a VR headset.',
//         image: "assets/images/VR.png"),

//     init_model(
//         id: 'I11',
//         title: 'Digital notice board',
//         desc:
//             'A great initiative taken up by the ISA-VESIT council to inspire young engineers to build innovative projects.',
//         image: "assets/images/DigitalNoticeBoard.png"),
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: <Widget>[
//         // App website
//         Row(
//           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//           children: <Widget>[
//             //Card for App Initiative
//             Card(
//               elevation: 4, // Change this
//               shadowColor: Colors.grey.withOpacity(0.5),
//               child: InkWell(
//                 //Wrap the code in inkwell to make it clickable
//                 onTap: () {
//                   print("tapped");
//                   Navigator.push(
//                     context,
//                     MaterialPageRoute(
//                       builder: (context) => initdetail_main(
//                         InitiativeDetails: _details[0],
//                         access: widget.access,
//                       ),
//                     ),
//                   );
//                 },
//                 child: Container(
//                   height: MediaQuery.of(context).size.height * 0.23,
//                   width: MediaQuery.of(context).size.width * 0.40,
//                   padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
//                   child: Column(
//                     mainAxisAlignment: MainAxisAlignment.start,
//                     children: <Widget>[
//                       Image.asset(
//                         "assets/images/innsaei.png",
//                         width: MediaQuery.of(context).size.width * 0.275,
//                       ),
//                       SizedBox(
//                         height: 10,
//                       ),
//                       Text(
//                         "App",
//                         style: TextStyle(fontFamily: "Voces", fontSize: 20),
//                         textAlign: TextAlign.center,
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//             ),

//             //Card for Website Initiative
//             Card(
//               elevation: 4, // Change this
//               shadowColor: Colors.grey.withOpacity(0.5),
//               child: InkWell(
//                 //Wrap the code in inkwell to make it clickable
//                 onTap: () {
//                   print("tapped");
//                   Navigator.push(
//                     context,
//                     MaterialPageRoute(
//                       builder: (context) => initdetail_main(
//                         InitiativeDetails: _details[1],
//                         access: widget.access,
//                       ),
//                     ),
//                   );
//                 },
//                 child: Container(
//                   height: MediaQuery.of(context).size.height * 0.23,
//                   width: MediaQuery.of(context).size.width * 0.40,
//                   // padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
//                   child: Column(
//                     mainAxisAlignment: MainAxisAlignment.start,
//                     children: <Widget>[
//                       Image.asset(
//                         "assets/images/website.png",
//                         width: MediaQuery.of(context).size.width * 0.40,
//                       ),
//                       SizedBox(
//                         height: 5,
//                       ),
//                       Text(
//                         "Website",
//                         style: TextStyle(fontFamily: "Voces", fontSize: 20),
//                         textAlign: TextAlign.center,
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//             ),
//           ],
//         ),

//         // New Row -------

//         Row(
//           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//           children: <Widget>[
//             //Card for Youtube Initiative
//             Card(
//               elevation: 4, // Change this
//               shadowColor: Colors.grey.withOpacity(0.5),
//               child: InkWell(
//                 //Wrap the code in inkwell to make it clickable
//                 onTap: () {
//                   print("tapped");
//                   Navigator.push(
//                     context,
//                     MaterialPageRoute(
//                       builder: (context) => initdetail_main(
//                         InitiativeDetails: _details[2],
//                         access: widget.access,
//                       ),
//                     ),
//                   );
//                 },
//                 child: Container(
//                   padding: EdgeInsets.fromLTRB(0, 20, 0, 10),
//                   height: MediaQuery.of(context).size.height * 0.23,
//                   width: MediaQuery.of(context).size.width * 0.40,
//                   child: Column(
//                     mainAxisAlignment: MainAxisAlignment.start,
//                     children: <Widget>[
//                       Image.asset(
//                         "assets/images/youtube.png",
//                         width: MediaQuery.of(context).size.width * 0.275,
//                       ),
//                       SizedBox(
//                         height: 13,
//                       ),
//                       Text(
//                         "Youtube",
//                         style: TextStyle(fontFamily: "Voces", fontSize: 20),
//                         textAlign: TextAlign.center,
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//             ),

//             //Card for 3D Printer Initiative
//             Card(
//               elevation: 4, // Change this
//               shadowColor: Colors.grey.withOpacity(0.5),
//               child: InkWell(
//                 //Wrap the code in inkwell to make it clickable
//                 onTap: () {
//                   print("tapped");
//                   Navigator.push(
//                     context,
//                     MaterialPageRoute(
//                       builder: (context) => initdetail_main(
//                         InitiativeDetails: _details[3],
//                         access: widget.access,
//                       ),
//                     ),
//                   );
//                 },
//                 child: Container(
//                   height: MediaQuery.of(context).size.height * 0.23,
//                   width: MediaQuery.of(context).size.width * 0.40,
//                   child: Column(
//                     mainAxisAlignment: MainAxisAlignment.start,
//                     children: <Widget>[
//                       Image.asset(
//                         "assets/images/threeD.png",
//                         width: MediaQuery.of(context).size.width * 0.40,
//                       ),
//                       SizedBox(
//                         height: 5,
//                       ),
//                       Text(
//                         "3D Printer",
//                         style: TextStyle(fontFamily: "Voces", fontSize: 20),
//                         textAlign: TextAlign.center,
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//             ),
//           ],
//         ),

//         //New Row----

//         Row(
//           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//           children: <Widget>[
//             //Card for Hardware Inventory Initiative
//             Card(
//               elevation: 4, // Change this
//               shadowColor: Colors.grey.withOpacity(0.5),
//               child: InkWell(
//                 //Wrap the code in inkwell to make it clickable
//                 onTap: () {
//                   print("tapped");
//                   Navigator.push(
//                     context,
//                     MaterialPageRoute(
//                       builder: (context) => initdetail_main(
//                         InitiativeDetails: _details[4],
//                         access: widget.access,
//                       ),
//                     ),
//                   );
//                 },
//                 child: Container(
//                   padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
//                   height: MediaQuery.of(context).size.height * 0.23,
//                   width: MediaQuery.of(context).size.width * 0.40,
//                   child: Column(
//                     mainAxisAlignment: MainAxisAlignment.start,
//                     children: <Widget>[
//                       Image.asset(
//                         "assets/images/inventory.png",
//                         width: MediaQuery.of(context).size.width * 0.275,
//                       ),
//                       SizedBox(
//                         height: 8.5,
//                       ),
//                       Container(
//                         width: MediaQuery.of(context).size.width * 0.275,
//                         child: Text(
//                           "Hardware Inventory",
//                           style: TextStyle(fontFamily: "Voces", fontSize: 20),
//                           textAlign: TextAlign.center,
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//             ),

//             //Card for BE and Beyond Initiative
//             Card(
//               elevation: 4, // Change this
//               shadowColor: Colors.grey.withOpacity(0.5),
//               child: InkWell(
//                 //Wrap the code in inkwell to make it clickable
//                 onTap: () {
//                   print("tapped");
//                   Navigator.push(
//                     context,
//                     MaterialPageRoute(
//                       builder: (context) => initdetail_main(
//                         InitiativeDetails: _details[5],
//                         access: widget.access,
//                       ),
//                     ),
//                   );
//                 },
//                 child: Container(
//                   height: MediaQuery.of(context).size.height * 0.23,
//                   width: MediaQuery.of(context).size.width * 0.40,
//                   child: Column(
//                     mainAxisAlignment: MainAxisAlignment.start,
//                     children: <Widget>[
//                       Image.asset(
//                         "assets/images/benbeyond.png",
//                         width: MediaQuery.of(context).size.width * 0.40,
//                       ),
//                       Text(
//                         "BE & Beyond",
//                         style: TextStyle(fontFamily: "Voces", fontSize: 20),
//                         textAlign: TextAlign.center,
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//             ),
//           ],
//         ),

//         //New Row--

//         Row(
//           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//           children: <Widget>[
//             //Card for IOT Kit Initiative
//             Card(
//               elevation: 4, // Change this
//               shadowColor: Colors.grey.withOpacity(0.5),
//               child: InkWell(
//                 //Wrap the code in inkwell to make it clickable
//                 onTap: () {
//                   print("tapped");
//                   Navigator.push(
//                     context,
//                     MaterialPageRoute(
//                       builder: (context) => initdetail_main(
//                         InitiativeDetails: _details[6],
//                         access: widget.access,
//                       ),
//                     ),
//                   );
//                 },
//                 child: Container(
//                   height: MediaQuery.of(context).size.height * 0.275,
//                   width: MediaQuery.of(context).size.width * 0.40,
//                   child: Column(
//                     mainAxisAlignment: MainAxisAlignment.start,
//                     children: <Widget>[
//                       Image.asset(
//                         "assets/images/iotKit.png",
//                         width: MediaQuery.of(context).size.width * 0.40,
//                       ),
//                       SizedBox(
//                         height: 10,
//                       ),
//                       Text(
//                         "IOT Kit",
//                         style: TextStyle(fontFamily: "Voces", fontSize: 20),
//                         textAlign: TextAlign.center,
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//             ),

//             //Card for Project Oriented Workshops Initiative
//             Card(
//               elevation: 4, // Change this
//               shadowColor: Colors.grey.withOpacity(0.5),
//               child: InkWell(
//                 //Wrap the code in inkwell to make it clickable
//                 onTap: () {
//                   print("tapped");
//                   Navigator.push(
//                     context,
//                     MaterialPageRoute(
//                       builder: (context) => initdetail_main(
//                         InitiativeDetails: _details[7],
//                         access: widget.access,
//                       ),
//                     ),
//                   );
//                 },

//                 child: Container(
//                   height: MediaQuery.of(context).size.height * 0.275,
//                   width: MediaQuery.of(context).size.width * 0.40,
//                   child: Column(
//                     children: <Widget>[
//                       Image.asset(
//                         "assets/images/pow.png",
//                         width: MediaQuery.of(context).size.width * 0.37,
//                       ),
//                       Text(
//                         "Project Oriented Workshops",
//                         style: TextStyle(fontFamily: "Voces", fontSize: 18),
//                         textAlign: TextAlign.center,
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//             ),
//           ],
//         ),
// // New row
//         Row(
//           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//           children: <Widget>[
//             //Card for IOT Kit Initiative
//             Card(
//               elevation: 4, // Change this
//               shadowColor: Colors.grey.withOpacity(0.5),
//               child: InkWell(
//                 //Wrap the code in inkwell to make it clickable
//                 onTap: () {
//                   print("tapped");
//                   Navigator.push(
//                     context,
//                     MaterialPageRoute(
//                       builder: (context) => initdetail_main(
//                         InitiativeDetails: _details[8],
//                         access: widget.access,
//                       ),
//                     ),
//                   );
//                 },
//                 child: Container(
//                   padding: EdgeInsets.only(top: 23),
//                   height: MediaQuery.of(context).size.height * 0.275,
//                   width: MediaQuery.of(context).size.width * 0.40,
//                   child: Column(
//                     mainAxisAlignment: MainAxisAlignment.start,
//                     children: <Widget>[
//                       Image.asset(
//                         "assets/images/Alumni_talk.png",
//                         width: MediaQuery.of(context).size.width * 0.40,
//                       ),
//                       SizedBox(
//                         height: 20,
//                       ),
//                       Text(
//                         "Alumni Hub",
//                         style: TextStyle(fontFamily: "Voces", fontSize: 20),
//                         textAlign: TextAlign.center,
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//             ),

//             //Card for Project Oriented Workshops Initiative
//             Card(
//               elevation: 4, // Change this
//               shadowColor: Colors.grey.withOpacity(0.5),
//               child: InkWell(
//                 //Wrap the code in inkwell to make it clickable
//                 onTap: () {
//                   print("tapped");
//                   Navigator.push(
//                     context,
//                     MaterialPageRoute(
//                       builder: (context) => initdetail_main(
//                         InitiativeDetails: _details[9],
//                         access: widget.access,
//                       ),
//                     ),
//                   );
//                 },

//                 child: Container(
//                   height: MediaQuery.of(context).size.height * 0.275,
//                   width: MediaQuery.of(context).size.width * 0.40,
//                   padding: EdgeInsets.only(top: 10),
//                   child: Column(
//                     children: <Widget>[
//                       Image.asset(
//                         "assets/images/Digital_library.png",
//                         width: MediaQuery.of(context).size.width * 0.37,
//                       ),
//                       Text(
//                         "Digital Library",
//                         style: TextStyle(fontFamily: "Voces", fontSize: 18),
//                         textAlign: TextAlign.center,
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//             ),
//           ],
//         ),

//         // Row

//         Row(
//           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//           children: <Widget>[
//             //Card for IOT Kit Initiative
//             Card(
//               elevation: 4, // Change this
//               shadowColor: Colors.grey.withOpacity(0.5),
//               child: InkWell(
//                 //Wrap the code in inkwell to make it clickable
//                 onTap: () {
//                   print("tapped");
//                   Navigator.push(
//                     context,
//                     MaterialPageRoute(
//                       builder: (context) => initdetail_main(
//                         InitiativeDetails: _details[10],
//                         access: widget.access,
//                       ),
//                     ),
//                   );
//                 },
//                 child: Container(
//                   height: MediaQuery.of(context).size.height * 0.275,
//                   width: MediaQuery.of(context).size.width * 0.40,
//                   child: Column(
//                     mainAxisAlignment: MainAxisAlignment.start,
//                     children: <Widget>[
//                       Image.asset(
//                         "assets/images/VR.png",
//                         width: MediaQuery.of(context).size.width * 0.40,
//                       ),
//                       SizedBox(
//                         height: 5,
//                       ),
//                       Text(
//                         "VR Headset",
//                         style: TextStyle(fontFamily: "Voces", fontSize: 20),
//                         textAlign: TextAlign.center,
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//             ),

//             //Card for Project Oriented Workshops Initiative
//             Card(
//               elevation: 4, // Change this
//               shadowColor: Colors.grey.withOpacity(0.5),
//               child: InkWell(
//                 //Wrap the code in inkwell to make it clickable
//                 onTap: () {
//                   print("tapped");
//                   Navigator.push(
//                     context,
//                     MaterialPageRoute(
//                       builder: (context) => initdetail_main(
//                         InitiativeDetails: _details[11],
//                         access: widget.access,
//                       ),
//                     ),
//                   );
//                 },

//                 child: Container(
//                   height: MediaQuery.of(context).size.height * 0.275,
//                   width: MediaQuery.of(context).size.width * 0.40,
//                   padding: EdgeInsets.only(top: 20),
//                   child: Column(
//                     children: <Widget>[
//                       Image.asset(
//                         "assets/images/DigitalNoticeBoard.png",
//                         width: MediaQuery.of(context).size.width * 0.37,
//                       ),
//                       SizedBox(
//                         height: 25,
//                       ),
//                       Text(
//                         "Digital Notice Board",
//                         style: TextStyle(fontFamily: "Voces", fontSize: 18),
//                         textAlign: TextAlign.center,
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ],
//     );
//   }
// }


// The 'initiatives_main' file will contain all the list and the other code except the gridview. The gridview will be in intiatives.dart , and there will be an import of the models code in initiatives.dart.  And the route will pass the title and description variable to the initdetail.dart file. The initdetail file has to just print it

// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'initdetail.dart';
// import 'models/init_model.dart';
import 'models/initiatives.dart';

class initiatives extends StatefulWidget {
  final String access;
  const initiatives(this.access, {Key? key}) : super(key: key);
  // final List<init_model> details;
  // initiatives(this.details);

  @override
  _initiativesState createState() => _initiativesState();
}

class _initiativesState extends State<initiatives> {
  final List<init_model> _details = [
    //Update images here
    init_model(
        id: 'I0',
        title: 'App',
        desc:
            'Innsaei (the sea within). As the name suggests, It enables you to search through our own Hardware Inventory and access the Digital Library of ISA-VESIT! Additionally, you can easily acquire workshop and event certificates when registering for all of our college\'s future activities. In other words, we\'ve assembled all the amenities that ISA-VESIT has to offer in this App!',
        image: "assets/images/innsaei.png"),
    init_model(
        id: 'I1',
        title: 'Website',
        desc:
            'Get access to the complete information of all events & workshop, 3D printing Portal, Editorials, Hall Of Fame, Digital Library and much more',
        image: "assets/images/website.jpg"),
    init_model(
        id: 'I2',
        title: 'Youtube',
        desc:
            'Tune in to watch tutorials & project videos on variety of topics and get the best career guidance from alumni.',
        image: "assets/images/youtube.jpg"),
    init_model(
        id: 'I3',
        title: '3D Printer',
        desc: 'Get your designed 3D models printed on the 3D Printer',
        image: "assets/images/3d.jpg"),
    init_model(
        id: 'I4',
        title: 'Hardware Inventory',
        desc:
            'You can now easily get any hardware component required in your project.',
        image: "assets/images/hardware_inventory.jpg"),
    init_model(
        id: 'I5',
        title: 'Be and Beyond',
        desc:
            'A talk show where we interact with prominent VESIT alumni from all over the world working in various fields of their expertise to help you find the right career path',
        image: "assets/images/benbeyond.jpg"),
    init_model(
        id: 'I6',
        title: 'IOT Kit',
        desc: 'We provide hardware components in a package at a low cost!',
        image: "assets/images/iot.jpg"),
    init_model(
        id: 'I7',
        title: 'Project Oriented Workshops',
        desc:
            'Get your projects certified by us and stand a chance to get featured on our Youtube channel & Hall of Fame!',
        image: "assets/images/project_oriented.jpg"),
    init_model(
        id: 'I8',
        title: 'Alumni Hub',
        desc:
            'Alumni hub is a platform for students to connect and interact with alumni. Students and Alumni can post on the platform and interact with each other. The alumni network helps us with an opportunity to build a foundation of support',
        image: "assets/images/alumnihub.jpg"),
    init_model(
        id: 'I9',
        title: 'Digital Library',
        desc:
            'Get an easy access to all reference books, textbooks & previous year question papersof your subject and competitive exams',
        image: "assets/images/digital.jpg"),

    init_model(
        id: 'I10',
        title: 'VR Headset',
        desc:
            'Only at ISA-VESIT can you immerse yourself in the realm of virtual reality with a VR headset.',
        image: "assets/images/VR.jpg"),

    init_model(
        id: 'I11',
        title: 'Digital notice board',
        desc:
            'A great initiative taken up by the ISA-VESIT council to inspire young engineers to build innovative projects.',
        image: "assets/images/notice.jpg"),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        // App website
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            //Card for App Initiative
            Card(
              elevation: 4, // Change this
              shadowColor: Colors.grey.withOpacity(0.5),
              child: InkWell(
                //Wrap the code in inkwell to make it clickable
                onTap: () {
                  print("tapped");
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => initdetail_main(
                        InitiativeDetails: _details[0],
                        access: widget.access,
                      ),
                    ),
                  );
                },
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.23,
                  width: MediaQuery.of(context).size.width * 0.40,
                  padding: EdgeInsets.fromLTRB(0, 10, 0, 20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Image.asset(
                        "assets/images/innsaei.png",
                        width: MediaQuery.of(context).size.width * 0.275,
                      ),
                      SizedBox(
                        height: 19,
                      ),
                      Text(
                        "App",
                        style: TextStyle(fontFamily: "Voces", fontSize: 20),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
              ),
            ),

            //Card for Website Initiative
            Card(
              elevation: 4, // Change this
              shadowColor: Colors.grey.withOpacity(0.5),
              child: InkWell(
                //Wrap the code in inkwell to make it clickable
                onTap: () {
                  print("tapped");
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => initdetail_main(
                        InitiativeDetails: _details[1],
                        access: widget.access,
                      ),
                    ),
                  );
                },
                child: SizedBox(
                  height: MediaQuery.of(context).size.height * 0.23,
                  width: MediaQuery.of(context).size.width * 0.40,
                  //padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Image.asset(
                        "assets/images/website.jpg",
                        width: MediaQuery.of(context).size.width * 0.40,
                        height: MediaQuery.of(context).size.height * 0.155,
                      ),
                      SizedBox(
                        height: 11.5,
                      ),
                      Text(
                        "Website",
                        style: TextStyle(fontFamily: "Voces", fontSize: 20),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),

        // New Row -------

        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            //Card for Youtube Initiative
            Card(
              elevation: 4, // Change this
              shadowColor: Colors.grey.withOpacity(0.5),
              child: InkWell(
                //Wrap the code in inkwell to make it clickable
                onTap: () {
                  print("tapped");
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => initdetail_main(
                        InitiativeDetails: _details[2],
                        access: widget.access,
                      ),
                    ),
                  );
                },
                child: Container(
                  padding: EdgeInsets.fromLTRB(0, 20, 0, 10),
                  height: MediaQuery.of(context).size.height * 0.23,
                  width: MediaQuery.of(context).size.width * 0.40,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Image.asset(
                        "assets/images/youtube.jpg",
                        width: MediaQuery.of(context).size.width * 0.275,
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        "Youtube",
                        style: TextStyle(fontFamily: "Voces", fontSize: 20),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
              ),
            ),

            //Card for 3D Printer Initiative
            Card(
              elevation: 4, // Change this
              shadowColor: Colors.grey.withOpacity(0.5),
              child: InkWell(
                //Wrap the code in inkwell to make it clickable
                onTap: () {
                  print("tapped");
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => initdetail_main(
                        InitiativeDetails: _details[3],
                        access: widget.access,
                      ),
                    ),
                  );
                },
                child: SizedBox(
                  height: MediaQuery.of(context).size.height * 0.23,
                  width: MediaQuery.of(context).size.width * 0.40,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Image.asset(
                        "assets/images/3d.jpg",

                        // width: MediaQuery.of(context).size.width * 0.385,
                        width: MediaQuery.of(context).size.width * 0.3,
                        height: MediaQuery.of(context).size.height * 0.15,
                      ),
                      SizedBox(
                        height: 4.8,
                      ),
                      Text(
                        "3D Printer",
                        style: TextStyle(fontFamily: "Voces", fontSize: 20),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),

        //New Row----

        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            //Card for Hardware Inventory Initiative
            Card(
              elevation: 4, // Change this
              shadowColor: Colors.grey.withOpacity(0.5),
              child: InkWell(
                //Wrap the code in inkwell to make it clickable
                onTap: () {
                  print("tapped");
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => initdetail_main(
                        InitiativeDetails: _details[4],
                        access: widget.access,
                      ),
                    ),
                  );
                },
                child: Container(
                  padding: EdgeInsets.fromLTRB(0, 10, 0, 30),
                  height: MediaQuery.of(context).size.height * 0.23,
                  width: MediaQuery.of(context).size.width * 0.40,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Image.asset("assets/images/hardware_inventory.jpg",
                          width: MediaQuery.of(context).size.width * 0.29,
                          height: MediaQuery.of(context).size.height * 0.0925),
                      SizedBox(
                        height: 12.9,
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.275,
                        child: Text(
                          "Hardware Inventory",
                          style: TextStyle(fontFamily: "Voces", fontSize: 20),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),

            //Card for BE and Beyond Initiative
            Card(
              elevation: 4, // Change this
              shadowColor: Colors.grey.withOpacity(0.5),
              child: InkWell(
                //Wrap the code in inkwell to make it clickable
                onTap: () {
                  print("tapped");
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => initdetail_main(
                        InitiativeDetails: _details[5],
                        access: widget.access,
                      ),
                    ),
                  );
                },
                child: SizedBox(
                  height: MediaQuery.of(context).size.height * 0.23,
                  width: MediaQuery.of(context).size.width * 0.40,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Image.asset("assets/images/benbeyond.jpg",
                          width: MediaQuery.of(context).size.width * 0.3,
                          height: MediaQuery.of(context).size.height * 0.12),
                      SizedBox(
                        height: 12,
                      ),
                      Text(
                        "BE & Beyond",
                        style: TextStyle(fontFamily: "Voces", fontSize: 20),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),

        //New Row--

        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            //Card for IOT Kit Initiative
            Card(
              elevation: 4, // Change this
              shadowColor: Colors.grey.withOpacity(0.5),
              child: InkWell(
                //Wrap the code in inkwell to make it clickable
                onTap: () {
                  print("tapped");
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => initdetail_main(
                        InitiativeDetails: _details[6],
                        access: widget.access,
                      ),
                    ),
                  );
                },
                child: SizedBox(
                  height: MediaQuery.of(context).size.height * 0.275,
                  width: MediaQuery.of(context).size.width * 0.40,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Image.asset("assets/images/iot.jpg",
                          width: MediaQuery.of(context).size.width * 0.35,
                          height: MediaQuery.of(context).size.height * 0.17),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        "IOT Kit",
                        style: TextStyle(fontFamily: "Voces", fontSize: 20),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
              ),
            ),

            //Card for Project Oriented Workshops Initiative
            Card(
              elevation: 4, // Change this
              shadowColor: Colors.grey.withOpacity(0.5),
              child: InkWell(
                //Wrap the code in inkwell to make it clickable
                onTap: () {
                  print("tapped");
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => initdetail_main(
                        InitiativeDetails: _details[7],
                        access: widget.access,
                      ),
                    ),
                  );
                },

                child: SizedBox(
                  height: MediaQuery.of(context).size.height * 0.275,
                  width: MediaQuery.of(context).size.width * 0.40,
                  child: Column(
                    children: <Widget>[
                      Image.asset("assets/images/project_oriented.jpg",
                          width: MediaQuery.of(context).size.width * 0.37,
                          height: MediaQuery.of(context).size.height * 0.17),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Project Oriented Workshops",
                        style: TextStyle(fontFamily: "Voces", fontSize: 20),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
// New row
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            //Card for IOT Kit Initiative
            Card(
              elevation: 4, // Change this
              shadowColor: Colors.grey.withOpacity(0.5),
              child: InkWell(
                //Wrap the code in inkwell to make it clickable
                onTap: () {
                  print("tapped");
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => initdetail_main(
                        InitiativeDetails: _details[8],
                        access: widget.access,
                      ),
                    ),
                  );
                },
                child: Container(
                  padding: EdgeInsets.only(top: 23),
                  height: MediaQuery.of(context).size.height * 0.275,
                  width: MediaQuery.of(context).size.width * 0.40,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Image.asset(
                        "assets/images/alumnihub.jpg",
                        width: MediaQuery.of(context).size.width * 0.40,
                        height: MediaQuery.of(context).size.height * 0.13,
                      ),
                      SizedBox(
                        height: 38.9,
                      ),
                      Text(
                        "Alumni Hub",
                        style: TextStyle(fontFamily: "Voces", fontSize: 20),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
              ),
            ),

            //Card for Project Oriented Workshops Initiative
            Card(
              elevation: 4, // Change this
              shadowColor: Colors.grey.withOpacity(0.5),
              child: InkWell(
                //Wrap the code in inkwell to make it clickable
                onTap: () {
                  print("tapped");
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => initdetail_main(
                        InitiativeDetails: _details[9],
                        access: widget.access,
                      ),
                    ),
                  );
                },

                child: Container(
                  height: MediaQuery.of(context).size.height * 0.275,
                  width: MediaQuery.of(context).size.width * 0.40,
                  padding: EdgeInsets.only(top: 10),
                  child: Column(
                    children: <Widget>[
                      Image.asset(
                        "assets/images/digital.jpg",
                        width: MediaQuery.of(context).size.width * 0.37,
                      ),
                      SizedBox(
                        height: 37,
                      ),
                      Text(
                        "Digital Library",
                        style: TextStyle(fontFamily: "Voces", fontSize: 20),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),

        // Row

        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            //Card for IOT Kit Initiative
            Card(
              elevation: 4, // Change this
              shadowColor: Colors.grey.withOpacity(0.5),
              child: InkWell(
                //Wrap the code in inkwell to make it clickable
                onTap: () {
                  print("tapped");
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => initdetail_main(
                        InitiativeDetails: _details[10],
                        access: widget.access,
                      ),
                    ),
                  );
                },
                child: SizedBox(
                  height: MediaQuery.of(context).size.height * 0.275,
                  width: MediaQuery.of(context).size.width * 0.40,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Image.asset(
                        "assets/images/VR.jpg",
                        width: MediaQuery.of(context).size.width * 15,
                        height: MediaQuery.of(context).size.height * 0.2,
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "VR Headset",
                        style: TextStyle(fontFamily: "Voces", fontSize: 20),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
              ),
            ),

            //Card for Project Oriented Workshops Initiative
            Card(
              elevation: 4, // Change this
              shadowColor: Colors.grey.withOpacity(0.5),
              child: InkWell(
                //Wrap the code in inkwell to make it clickable
                onTap: () {
                  print("tapped");
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => initdetail_main(
                        InitiativeDetails: _details[11],
                        access: widget.access,
                      ),
                    ),
                  );
                },

                child: Container(
                  height: MediaQuery.of(context).size.height * 0.275,
                  width: MediaQuery.of(context).size.width * 0.40,
                  padding: EdgeInsets.only(top: 20),
                  child: Column(
                    children: <Widget>[
                      Image.asset(
                        "assets/images/notice.jpg",
                        width: MediaQuery.of(context).size.width * 0.37,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Digital Notice Board",
                        style: TextStyle(fontFamily: "Voces", fontSize: 20),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
