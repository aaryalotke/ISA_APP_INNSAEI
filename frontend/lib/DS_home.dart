import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class homePage extends StatefulWidget {
  const homePage({Key? key}) : super(key: key);

  @override
  State<homePage> createState() => _homePageState();
}

class _homePageState extends State<homePage> {
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
          //Top part of Homepage_task:need to solve margin error
          Container(
            height: screenheight * 0.4,
            decoration: const BoxDecoration(
              color: Color(0xff00467F),
            ),
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(top: screenheight * 0.1, bottom: 20),
                  child: Image.asset(
                    'assets/images/ISA-header-white.png',
                    // width: MediaQuery.of(context).size.width * 1,
                    // height: screenheight * 0.4,
                    width: screenWidth * 0.4,
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
                          color: Colors.white),
                      textAlign: TextAlign.center,
                      speed: const Duration(milliseconds: 200),
                    ),
                  ],
                  totalRepeatCount: 15,
                  pause: const Duration(milliseconds: 2000),
                  displayFullTextOnTap: true,
                  stopPauseOnTap: true,
                )

                    // Text(
                    //   "Setting the standards for Automation",
                    //   style: TextStyle(
                    //     fontSize: 22,
                    //     color: Colors.white,
                    //   ),
                    //   textAlign: TextAlign.center,
                    // ),
                    ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 50, bottom: 20),
            child: const Text(
              "Welcome to ISA-VESIT",
              style: TextStyle(fontSize: 25),
              textAlign: TextAlign.center,
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 0),
            child: SizedBox(
              height: screenheight * 0.39,
              child: ListView(
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
                              //<-- SEE HERE
                              side: const BorderSide(
                                color: Color(0xffD4D4D4),
                              ),
                              borderRadius: BorderRadius.circular(10.0)),
                          child: InkWell(
                            onTap: () {
                              print("Initiatives");
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
                                    size: 35.0,
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
                              //<-- SEE HERE
                              side: const BorderSide(
                                color: Color(0xffD4D4D4),
                              ),
                              borderRadius: BorderRadius.circular(10.0)),
                          child: InkWell(
                            onTap: () {
                              print("Editorials");
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
                                    size: 35.0,
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
                              //<-- SEE HERE
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
                                    size: 35.0,
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
                              //<-- SEE HERE
                              side: const BorderSide(
                                color: Color(0xffD4D4D4),
                              ),
                              borderRadius: BorderRadius.circular(10.0)),
                          child: InkWell(
                            onTap: () {
                              print("College Calender");
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
                                    size: 35.0,
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
                              //<-- SEE HERE
                              side: const BorderSide(
                                color: Color(0xffD4D4D4),
                              ),
                              borderRadius: BorderRadius.circular(10.0)),
                          child: InkWell(
                            onTap: () {
                              print("Upcoming events");
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
                                    size: 35.0,
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
                              //<-- SEE HERE
                              side: const BorderSide(
                                color: Color(0xffD4D4D4),
                              ),
                              borderRadius: BorderRadius.circular(10.0)),
                          child: InkWell(
                            onTap: () {
                              print("Hardware Inventort");
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
                                    size: 35.0,
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
                              //<-- SEE HERE
                              side: const BorderSide(
                                color: Color(0xffD4D4D4),
                              ),
                              borderRadius: BorderRadius.circular(10.0)),
                          child: InkWell(
                            onTap: () {
                              print("Developers");
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
                                    size: 35.0,
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
                              //<-- SEE HERE
                              side: const BorderSide(
                                color: Color(0xffD4D4D4),
                              ),
                              borderRadius: BorderRadius.circular(10.0)),
                          child: InkWell(
                            onTap: () {
                              print("Council");
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
                                    size: 35.0,
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
                              //<-- SEE HERE
                              side: const BorderSide(
                                color: Color(0xffD4D4D4),
                              ),
                              borderRadius: BorderRadius.circular(10.0)),
                          child: InkWell(
                            onTap: () {
                              print("Gallery");
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
                                    size: 35.0,
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

                        // Container(
                        //   decoration: BoxDecoration(
                        //     border: Border.all(),
                        //   ),
                        //   padding: EdgeInsets.only(top: 30),
                        //   child: Column(
                        //     children: [
                        //       const Icon(
                        //         Icons.mail_outline,
                        //         color: Colors.black,
                        //         size: 35.0,
                        //         semanticLabel: '',
                        //       ),
                        //       Container(
                        //         margin: EdgeInsets.only(top: 10),
                        //         child: const Text(
                        //           "Editorials",
                        //           textAlign: TextAlign.center,
                        //           style: TextStyle(
                        //             fontSize: 20,
                        //           ),
                        //         ),
                        //       ),
                        //     ],
                        //   ),
                        // ),
                        // Container(
                        //   decoration: BoxDecoration(
                        //     border: Border.all(),
                        //   ),
                        //   padding: const EdgeInsets.only(top: 30),
                        //   child: Column(
                        //     children: [
                        //       const Icon(
                        //         Icons.book_outlined,
                        //         color: Colors.black,
                        //         size: 35.0,
                        //         semanticLabel: 'Digital library',
                        //       ),
                        //       Container(
                        //         margin: EdgeInsets.only(top: 10),
                        //         child: const Text(
                        //           "Digital Library",
                        //           textAlign: TextAlign.center,
                        //           style: TextStyle(
                        //             fontSize: 20,
                        //           ),
                        //         ),
                        //       ),
                        //     ],
                        //   ),
                        // ),
                        // Container(
                        //   decoration: BoxDecoration(
                        //     border: Border.all(),
                        //   ),
                        //   padding: const EdgeInsets.only(top: 30),
                        //   child: Column(
                        //     children: [
                        //       const Icon(
                        //         Icons.calendar_month,
                        //         color: Colors.black,
                        //         size: 35.0,
                        //         semanticLabel: 'college calender',
                        //       ),
                        //       Container(
                        //         margin: EdgeInsets.only(top: 10),
                        //         child: const Text(
                        //           "College Calender",
                        //           textAlign: TextAlign.center,
                        //           style: TextStyle(
                        //             fontSize: 20,
                        //           ),
                        //         ),
                        //       ),
                        //     ],
                        //   ),
                        // ),
                        // Container(
                        //   decoration: BoxDecoration(
                        //     border: Border.all(),
                        //   ),
                        //   padding: const EdgeInsets.only(top: 30),
                        //   child: Column(
                        //     children: [
                        //       const Icon(
                        //         Icons.upcoming_outlined,
                        //         color: Colors.black,
                        //         size: 35.0,
                        //         semanticLabel: 'Inventory',
                        //       ),
                        //       Container(
                        //         margin: EdgeInsets.only(top: 10),
                        //         child: const Text(
                        //           "Upcoming Events",
                        //           textAlign: TextAlign.center,
                        //           style: TextStyle(
                        //             fontSize: 20,
                        //           ),
                        //         ),
                        //       ),
                        //     ],
                        //   ),
                        // ),
                        // Container(
                        //   decoration: BoxDecoration(
                        //     border: Border.all(),
                        //   ),
                        //   padding: const EdgeInsets.only(top: 30),
                        //   child: Column(
                        //     children: [
                        //       const Icon(
                        //         Icons.hardware_outlined,
                        //         color: Colors.black,
                        //         size: 35.0,
                        //         semanticLabel: 'Inventory',
                        //       ),
                        //       Container(
                        //         margin: EdgeInsets.only(top: 10),
                        //         child: const Text(
                        //           "Hardware Inventory",
                        //           textAlign: TextAlign.center,
                        //           style: TextStyle(
                        //             fontSize: 20,
                        //           ),
                        //         ),
                        //       ),
                        //     ],
                        //   ),
                        // ),
                        // Container(
                        //   decoration: BoxDecoration(
                        //     border: Border.all(),
                        //   ),
                        //   padding: const EdgeInsets.only(top: 30),
                        //   child: Column(
                        //     children: [
                        //       const Icon(
                        //         Icons.developer_mode_outlined,
                        //         color: Colors.black,
                        //         size: 35.0,
                        //         semanticLabel: 'Developers',
                        //       ),
                        //       Container(
                        //         margin: EdgeInsets.only(top: 10),
                        //         child: const Text(
                        //           "Developers",
                        //           textAlign: TextAlign.center,
                        //           style: TextStyle(
                        //             fontSize: 20,
                        //           ),
                        //         ),
                        //       ),
                        //     ],
                        //   ),
                        // ),

                        // Container(
                        //   decoration: BoxDecoration(
                        //     border: Border.all(),
                        //   ),
                        //   padding: const EdgeInsets.only(top: 30),
                        //   child: Column(
                        //     children: [
                        //       const Icon(
                        //         Icons.group_outlined,
                        //         color: Colors.black,
                        //         size: 35.0,
                        //         semanticLabel: 'Council',
                        //       ),
                        //       Container(
                        //         margin: EdgeInsets.only(top: 10),
                        //         child: const Text(
                        //           "Council",
                        //           textAlign: TextAlign.center,
                        //           style: TextStyle(
                        //             fontSize: 20,
                        //           ),
                        //         ),
                        //       ),
                        //     ],
                        //   ),
                        // ),

                        // Container(
                        //   decoration: BoxDecoration(
                        //     border: Border.all(),
                        //   ),
                        //   padding: const EdgeInsets.only(top: 30),
                        //   child: Column(
                        //     children: [
                        //       const Icon(
                        //         Icons.camera_alt_outlined,
                        //         color: Colors.black,
                        //         size: 35.0,
                        //         semanticLabel: 'Inventory',
                        //       ),
                        //       Container(
                        //         margin: EdgeInsets.only(top: 10),
                        //         child: const Text(
                        //           "Gallery",
                        //           textAlign: TextAlign.center,
                        //           style: TextStyle(
                        //             fontSize: 20,
                        //           ),
                        //         ),
                        //       ),
                        //     ],
                        //   ),
                        // ),
                      ],
                    ),
                  ),

                  // Positioned(
                  //   top: 0,
                  //   width: screenWidth,
                  //   child: Container(
                  //     height: screenheight * 0.4,
                  //     color: Color(0xff00467F),
                  //   ),
                  // ),

                  // Positioned(
                  //   top: screenheight * 0.3,
                  //   child: Image.asset(
                  //     'assets/images/ISA-header-white.png',
                  //     // width: MediaQuery.of(context).size.width * 1,
                  //     height: screenheight * 0.4,
                  //     width: screenWidth * 0.4,
                  //   ),
                  // ),

                  // Stack(
                  //   alignment: Alignment.center,
                  //   children: <Widget>[
                  //     Positioned(
                  //       top: 0,
                  //       width: screenWidth,
                  //       child: Container(
                  //         height: 350,
                  //         color: Color(0xff00467F),
                  //       ),
                  //     ),
                  //   ],
                  // ),
                ],
              ),
            ),
          ),

          //Bottom bar_task:iska width kam karna hai
          BottomNavigationBar(
            backgroundColor: const Color(0xff00467F),
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.contact_phone,
                  color: Colors.white,
                ),
                label: 'Contact',

                // backgroundColor: Color(0xff00467F),
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                  color: Colors.white,
                ),
                label: 'Home',
                // backgroundColor: Color(0xff00467F),
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.person,
                  color: Colors.white,
                ),
                label: 'Profile',
                // backgroundColor: Color(0xff00467F),
              ),
            ],
            unselectedLabelStyle:
                const TextStyle(color: Colors.white, fontSize: 14),
            currentIndex: _selectedIndex,
            selectedItemColor: Colors.white,
            unselectedItemColor: Colors.white,
            onTap: _onItemTapped,
          ),

          // Stack(
          //   alignment: Alignment.center,
          //   children: <Widget>[
          //     Positioned(
          //       top: 0,
          //       width: screenWidth,
          //       child: Container(
          //         height: 350,
          //         color: Color(0xff00467F),
          //       ),
          //     ),
          //   ],
          // ),
        ],
      ),
    );
    // children: [
    //   Stack(
    //     alignment: Alignment.center,
    //     children: <Widget>[
    //       Positioned(
    //         top: 0,
    //         width: screenWidth,
    //         child: Container(
    //           height: 350,
    //           color: Color(0xff00467F),
    //         ),
    //       ),
    //     ],
    //   ),
    // ],

    // body: ListView(
    //   children: <Widget>[
    //     Stack(
    //       alignment: Alignment.center,
    //       children: <Widget>[
    //         Positioned(
    //           top: 0,
    //           width: screenWidth,
    //           child: Container(
    //             height: 350,
    //             color: Color(0xff00467F),
    //           ),
    //         ),
    //         const Positioned(
    //           top: 280,
    //           // left: 40,
    //           child: Center(
    //             child: Text(
    //               "Setting the standards for Automation",
    //               style: TextStyle(
    //                 fontSize: 22,
    //                 color: Colors.white,
    //               ),
    //               textAlign: TextAlign.center,
    //             ),
    //           ),
    //         ),
    //         Positioned(
    //           top: 0,
    //           child: Image.asset(
    //             'assets/images/ISA-header-white.png',
    //             // width: MediaQuery.of(context).size.width * 1,
    //             height: screenheight * 0.4,
    //             width: screenWidth * 0.4,
    //           ),
    //         ),
    //         const Positioned(
    //           top: 370,
    //           // left: 40,
    //           child: Center(
    //             child: Text(
    //               "Welcome to ISA-VESIT",
    //               style: TextStyle(
    //                 fontSize: 26,
    //                 color: Colors.black,
    //               ),
    //               textAlign: TextAlign.center,
    //             ),
    //           ),
    //         ),
    //       ],
    //     ),
    //     GridView.count(
    //       primary: false,
    //       padding: const EdgeInsets.all(20),
    //       crossAxisSpacing: 10,
    //       mainAxisSpacing: 10,
    //       crossAxisCount: 2,
    //       children: <Widget>[
    //         Container(
    //           padding: const EdgeInsets.all(8),
    //           color: Colors.teal[100],
    //           child: const Text("He'd have you all unravel at the"),
    //         ),
    //         Container(
    //           padding: const EdgeInsets.all(8),
    //           color: Colors.teal[200],
    //           child: const Text('Heed not the rabble'),
    //         ),
    //         Container(
    //           padding: const EdgeInsets.all(8),
    //           color: Colors.teal[300],
    //           child: const Text('Sound of screams but the'),
    //         ),
    //         Container(
    //           padding: const EdgeInsets.all(8),
    //           color: Colors.teal[400],
    //           child: const Text('Who scream'),
    //         ),
    //         Container(
    //           padding: const EdgeInsets.all(8),
    //           color: Colors.teal[500],
    //           child: const Text('Revolution is coming...'),
    //         ),
    //         Container(
    //           padding: const EdgeInsets.all(8),
    //           color: Colors.teal[600],
    //           child: const Text('Revolution, they...'),
    //         ),
    //       ],
    //     ),
    //     //   bottomNavigationBar:
    //   ],
    // ),
  }
}
