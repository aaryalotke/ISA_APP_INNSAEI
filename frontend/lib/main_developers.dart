import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:isa/main_contactus.dart';
import './models/format_developers.dart';
import 'package:url_launcher/url_launcher.dart';

import 'api_class1.dart';
//import 'models/utils.dart';

import 'edi_main.dart';
import 'home_new.dart';
import 'main_profile.dart';
import 'pageone_dev.dart';
//importing the packages required for integration
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'dart:async';

// void main() {
//   runApp(developersPagetwo());
// }

// class developersPagetwo extends StatelessWidget {
//   // This widget is the root of your application.

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       theme: ThemeData(
//         fontFamily: 'Voces',
//       ),
//       home: trailDevelopers(),
//     );
//   }
// }

class trailDevelopers extends StatefulWidget {
  final String access;
  trailDevelopers(this.access);
  // String titleInput;
  // String amountInput;
  @override
  State<trailDevelopers> createState() => _traildevelopersState();
}

class _traildevelopersState extends State<trailDevelopers> {
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
              transitionDuration: const Duration(seconds: 1),
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
              transitionDuration: const Duration(seconds: 1),
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

  List<Format> people = [];

  bool isLoaded = false;
  void initState() {
    super.initState();
    getdev();
  }

  getdev() async {
    //   //List decoded = jsonDecode(await api().getDevelopersList("eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNjc0MDY0NDEyLCJpYXQiOjE2NjYyODg0MTIsImp0aSI6IjNiMjE3YjdjOWRjMTRlNDM5NzdmNGU5MWM3ODYzNzE5IiwidXNlcl9pZCI6NX0.yAHpYbkrYj2ynio84iS_tZ7Z0z8LpQXMwtpirv-PIos"))["post"];

    //trail1

    //   List dec = jsonDecode(await api().getDevelopersList("eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNjc0MDY0NDEyLCJpYXQiOjE2NjYyODg0MTIsImp0aSI6IjNiMjE3YjdjOWRjMTRlNDM5NzdmNGU5MWM3ODYzNzE5IiwidXNlcl9pZCI6NX0.yAHpYbkrYj2ynio84iS_tZ7Z0z8LpQXMwtpirv-PIos"))["post"];
    //   print(">>> Developers List retrieved successfully");
    //  for (var element in dec) {
    //    Format item = Format.fromJson(element);
    //      people.add(item);

    //trail2

    //var response = await api().getDevelopersList("eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNjc0MDY0NDEyLCJpYXQiOjE2NjYyODg0MTIsImp0aSI6IjNiMjE3YjdjOWRjMTRlNDM5NzdmNGU5MWM3ODYzNzE5IiwidXNlcl9pZCI6NX0.yAHpYbkrYj2ynio84iS_tZ7Z0z8LpQXMwtpirv-PIos");
    try {
      var response = await api().getDevelopersList(widget.access);

      print(response);
      // List decoded = jsonDecode(response);
      List list = (jsonDecode(response) as List<dynamic>);

      print(">>> developers list retrieved successfully");

      for (var element in list) {
        print("----------------------------------------------------------");
        print(element["link"]);
        for (var count in element["link"]) {
          Format item = Format.fromJson(count);
          people.add(item);
        }
      }
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: Text(e.toString()),
        backgroundColor: Colors.red,
        elevation: 10,
        behavior: SnackBarBehavior.floating,
        margin: const EdgeInsets.all(5),
      ));
    }
    Future.delayed(const Duration(seconds: 3), () {
      isLoaded = true;
      setState(() {});
    });

    print(people);
  }

  // final List<Format> people = [ //all 9 people's detail
  //   Format(
  //     id: '1',
  //     name: 'Dhruvisha Mondhe',
  //     post: 'Technical Executive',
  //     maillink: 'mailto:2019.dhruvisha.mondhe@ves.ac.in	',
  //     instalink: 'https://instagram.com/dhruvishamondhe01?utm_medium=copy_link',
  //     inlink: 'https://www.linkedin.com/in/dhruvisha-m-971284207',
  //     photo: 'assets/images/Dhruvisha Mondhe.jpeg',
  //   ),
  //   Format(
  //     id: '2',
  //     name: 'Saritha Tharakan',
  //     post: 'Technical Executive',
  //     maillink: 'mailto:2019.saritha.tharakan@ves.ac.in	',
  //     instalink: 'https://instagram.com/sarithatharakan?utm_medium=copy_link',
  //     inlink: 'https://www.linkedin.com/in/saritha-tharakan-5573951b1',
  //     photo: 'assets/images/Saritha Tharakan.jpg',
  //   ),
  //   Format(
  //     id: '3',
  //     name: 'Muskan Hassanandani',
  //     post: 'Web Executive',
  //     maillink: 'mailto:2019.muskan.hassanandani@ves.ac.in	',
  //     instalink: 'https://instagram.com/muskan_hassanandani?utm_medium=copy_link',
  //     inlink: 'https://www.linkedin.com/in/muskan-hassanandani-569284205',
  //     photo:'assets/images/Muskan.jpg',
  //   ),
  //   Format(
  //     id: '4',
  //     name: 'Rashmi Singh',
  //     post: 'Web Editor',
  //     maillink: 'mailto:2019.rashmi.singh@ves.ac.in	',
  //     instalink: '',
  //     inlink: 'https://www.linkedin.com/in/rashmi-singh-b3982520b',
  //     photo: 'assets/images/Rashmi.jpg',
  //   ),
  //   Format(
  //     id: '5',
  //     name: 'Nidhi Mundhada',
  //     post: 'Jr.Editor',
  //     maillink: 'mailto:2019.nidhi.mundhada@ves.ac.in	',
  //     instalink: 'https://instagram.com/nidhee_mundhada?utm_medium=copy_link',
  //     inlink: 'https://www.linkedin.com/in/nidhi-mundhada-619926213',
  //      photo: 'assets/images/Nidhi Mundhada.jpg',
  //   ),
  //   Format(
  //     id: '6',
  //     name: 'Aarya Lotke',
  //     post: 'SE Coordinator',
  //     maillink: 'mailto:2020.aarya.lotke@ves.ac.in	',
  //     instalink: '',
  //     inlink: 'https://www.linkedin.com/in/aarya-lotke-273092222',
  //     photo: 'assets/images/Aarya Lotke.jpg',
  //   ),
  //   Format(
  //     id: '7',
  //     name: 'Rajnandini Verma',
  //     post: 'SE Coordinator',
  //     maillink: 'mailto:2020.rajnandini.verma@ves.ac.in	',
  //     instalink: 'https://instagram.com/_rajnandini_verma?utm_medium=copy_link',
  //     inlink: 'https://www.linkedin.com/in/rajnandini-verma-4191b221a',
  //     photo: 'assets/images/Rajnandini Verma.jpeg',
  //   ),
  //   Format(
  //     id: '8',
  //     name: 'Yash Chavan',
  //     post: 'SE Coordinator',
  //     maillink: 'mailto:2020.yash.chavan@ves.ac.in	',
  //     instalink: 'https://instagram.com/yash_c10?utm_medium=copy_link',
  //     inlink: 'https://www.linkedin.com/in/yash-chavan-a4a545227',
  //     photo: 'assets/images/Yash Chavan.jpg',
  //   ),
  //   Format(
  //     id: '9',
  //     name: 'Nilesh Sharma',
  //     post: 'SE Coordinator',
  //     maillink: 'mailto:2020.nilesh.sharma@ves.ac.in	',
  //     instalink: 'https://instagram.com/sharmanilesh915?utm_medium=copy_link',
  //     inlink: 'https://www.linkedin.com/in/nilesh-sharma-53bb58214',
  //     photo: 'assets/images/Nilesh Sharma.jpg',
  //   ),
  //   Format(
  //     id: '10',
  //     name: 'Sanchit Mhadgut',
  //     post: 'SE Coordinator',
  //     maillink: 'mailto:2020.sanchit.mhadgut@ves.ac.in	',
  //     instalink: 'https://instagram.com/sanchit_2906?igshid=YmMyMTA2M2Y=',
  //     inlink: 'https://www.linkedin.com/in/sanchit-mhadgut-143193220',
  //     photo: 'assets/images/Sanchit Mhadgut.jpg',
  //   ),
  // ];

//MediaQueryData media;
  @override
  Widget build(BuildContext context) {
    //
    return Scaffold(
      //debugShowCheckedModeBanner: false,
      //height: MediaQuery.of(context).size.height,
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.of(context).pop(),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text(
          'DEVELOPERS',
          style: TextStyle(
              fontFamily: 'Ubuntu', fontSize: 25, color: Colors.black),
        ),
        centerTitle: true,
      ),
      body: isLoaded
          ? Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.height * 1,
              padding: EdgeInsets.all(10),
              child: pageone_dev(people),
            )
          : const Center(
              child: CircularProgressIndicator(),
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

      // Container(
      //         padding: EdgeInsets.all(20),
      //         child: ListView(
      //           children: <Widget>[
      //             //Code for images part
      //              galleryThird(
      //                 others)
      //                 //galleryThird ko call kiya with images as arguments
      //           ],
      //         ),
      //       )
    );
  }
}
