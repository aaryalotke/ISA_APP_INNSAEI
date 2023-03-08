import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class homePage extends StatefulWidget {
  const homePage({Key? key}) : super(key: key);

  @override
  State<homePage> createState() => _homePageState();
}

class _homePageState extends State<homePage> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 70, fontWeight: FontWeight.bold);

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
            height: screenheight * 0.5,
            decoration: const BoxDecoration(
              color: Color(0xff00467F),
            ),
            child: Column(
              children: [
                Image.asset(
                  'assets/images/ISA-header-white.png',
                  // width: MediaQuery.of(context).size.width * 1,
                  height: screenheight * 0.4,
                  width: screenWidth * 0.4,
                ),
                const Center(
                  child: Text(
                    "Setting the standards for Automation",
                    style: TextStyle(
                      fontSize: 22,
                      color: Colors.white,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 20, bottom: 20),
            child: const Text(
              "Welcome to ISA-VESIT",
              style: TextStyle(fontSize: 30),
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(
            height: 295,
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
                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(),
                        ),
                        padding: const EdgeInsets.all(8),
                        child: Column(
                          children: [
                            const Icon(
                              Icons.inventory,
                              color: Color(0xffFF725E),
                              size: 50.0,
                              semanticLabel: 'Inventory',
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 20),
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
                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(),
                        ),
                        padding: const EdgeInsets.all(8),
                        child: Column(
                          children: [
                            const Icon(
                              Icons.mail_outline,
                              color: Color(0xffFF725E),
                              size: 50.0,
                              semanticLabel: 'Inventory',
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 20),
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
                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(),
                        ),
                        padding: const EdgeInsets.all(8),
                        child: Column(
                          children: [
                            const Icon(
                              Icons.book,
                              color: Color(0xffFF725E),
                              size: 50.0,
                              semanticLabel: 'Inventory',
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 20),
                              child: const Text(
                                "Digital Library",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 20,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(),
                        ),
                        padding: const EdgeInsets.all(8),
                        child: Column(
                          children: [
                            const Icon(
                              Icons.calendar_month,
                              color: Color(0xffFF725E),
                              size: 50.0,
                              semanticLabel: 'Inventory',
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 20),
                              child: const Text(
                                "College Calender",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 20,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(),
                        ),
                        padding: const EdgeInsets.all(8),
                        child: Column(
                          children: [
                            const Icon(
                              Icons.upcoming,
                              color: Color(0xffFF725E),
                              size: 50.0,
                              semanticLabel: 'Inventory',
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 20),
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
                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(),
                        ),
                        padding: const EdgeInsets.all(8),
                        child: Column(
                          children: [
                            const Icon(
                              Icons.hardware,
                              color: Color(0xffFF725E),
                              size: 50.0,
                              semanticLabel: 'Inventory',
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 20),
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
                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(),
                        ),
                        padding: const EdgeInsets.all(8),
                        child: Column(
                          children: [
                            const Icon(
                              Icons.developer_mode,
                              color: Color(0xffFF725E),
                              size: 50.0,
                              semanticLabel: 'Inventory',
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 20),
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
                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(),
                        ),
                        padding: const EdgeInsets.all(8),
                        child: Column(
                          children: [
                            const Icon(
                              Icons.group,
                              color: Color(0xffFF725E),
                              size: 50.0,
                              semanticLabel: 'Inventory',
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 20),
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
                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(),
                        ),
                        padding: const EdgeInsets.all(8),
                        child: Column(
                          children: [
                            const Icon(
                              Icons.camera_front,
                              color: Color(0xffFF725E),
                              size: 50.0,
                              semanticLabel: 'Inventory',
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 20),
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

          //Bottom bar_task:iska width kam karna hai
          BottomNavigationBar(
            backgroundColor: const Color(0xff00467F),
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(Icons.contact_phone),
                label: 'Contact',
                // backgroundColor: Color(0xff00467F),
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Home',
                // backgroundColor: Color(0xff00467F),
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person),
                label: 'Profile',
                // backgroundColor: Color(0xff00467F),
              ),
            ],
            currentIndex: _selectedIndex,
            selectedItemColor: Colors.white,
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
