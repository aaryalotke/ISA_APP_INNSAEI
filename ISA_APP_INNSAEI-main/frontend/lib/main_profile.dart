import 'package:flutter/material.dart';
import 'package:isa/certi_main.dart';
import 'api_class1.dart';
import 'home_new.dart';
import 'main_contactus.dart';
import 'models/format_profile_mem.dart';

//importing the packages required for integration
import 'dart:convert';

class profile_members extends StatefulWidget {
  final String access;
  const profile_members(this.access, {Key? key}) : super(key: key);
  @override
  State<profile_members> createState() => _profile_membersState();
}

class _profile_membersState extends State<profile_members> {
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
          MaterialPageRoute(
              builder: (context) => profile_members(widget.access)),
        );
        break;
    }
    setState(() {
      _selectedIndex = index;
    });
  }

  // list format
  final List<Profile_mem> profile = [];

  @override
  void initState() {
    super.initState();
    getpro();
  }

  getpro() async {
    try {
      var response = await api().getProfile_MemList(widget.access);
//List decoded = jsonDecode(await api().getProfile_MemList("eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNjgzOTYxNjgyLCJpYXQiOjE2NzYxODU2ODIsImp0aSI6IjVhYmRkNDg5OWFhYTQzZjA4YjU5MDAxNWZjZWFhODdjIiwidXNlcl9pZCI6NX0.Tu_uJhVYIlqonbG6la0dkCUKL4X_nTt3uFcCjCfZSt0"))["post"];
      print(response);
      List list = (jsonDecode(response) as List<dynamic>);
      print(">>> profile list retrieved successfully");

      print("Profile: ${list[0]["profile"]}");

      Profile_mem item =
          Profile_mem.fromJson(list[0]["profile"] as Map<String, dynamic>);
      profile.add(item);
      print(profile.length);
      print(profile[0]);
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: Text(e.toString()),
        backgroundColor: Colors.red,
        elevation: 10,
        behavior: SnackBarBehavior.floating,
        margin: const EdgeInsets.all(5),
      ));
    }

    // print(decoded);

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
      body: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          //orange container
          Positioned(
            child: Container(
              margin: const EdgeInsets.fromLTRB(0, 0, 0, 300),
              //padding: EdgeInsets.fromLTRB(57, 10, 10, 0),
              height: 200,
              width: 500,
              // decoration: ShapeDecoration(

              //   color: Color(0xFFFE735D),
              //   shape: RoundedRectangleBorder(
              //     borderRadius: BorderRadius.circular(35.0),
              //   ),
              // ),

              decoration: const BoxDecoration(
                color: Color(0xFFFE735D),
                borderRadius: BorderRadius.vertical(
                  bottom: Radius.circular(35),
                ),
              ),
            ),
          ),

          //blue container
          Positioned(
            child: Container(
              margin: const EdgeInsets.fromLTRB(0, 0, 0, 405),
              //padding: EdgeInsets.fromLTRB(57, 10, 10, 0),
              height: 270,
              width: 500,

              decoration: const BoxDecoration(
                color: Color(0xFF00467f),
                borderRadius: BorderRadius.vertical(
                  bottom: Radius.circular(35),
                ),
              ),
            ),
          ),

          //text
          Positioned(
            child: Container(
              margin: const EdgeInsets.fromLTRB(0, 0, 150, 450),
              //padding: EdgeInsets.fromLTRB(24, 10, 10, 0),
              child: const Text(
                'Welcome Back!',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontFamily: 'Voces', fontSize: 30, color: Colors.white),
              ),
            ),
          ),

          //three circles
          Positioned(
            child: Container(
              margin: const EdgeInsets.fromLTRB(280, 0, 0, 450),
              //padding: EdgeInsets.fromLTRB(24, 10, 10, 0),
              child: Row(
                //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                mainAxisSize: MainAxisSize.min,

                children: [
                  Container(
                    padding: const EdgeInsets.fromLTRB(0, 0, 10, 0),
                    child: const CircleAvatar(
                      backgroundColor: Color(0xFFFE735D),
                      radius: 10,
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.fromLTRB(0, 0, 10, 0),
                    child: const CircleAvatar(
                      backgroundColor: Color(0xFFFE735D),
                      radius: 10,
                    ),
                  ),
                  Container(
                    child: const CircleAvatar(
                      backgroundColor: Color(0xFFFE735D),
                      radius: 10,
                    ),
                  )
                ],
              ),
            ),
          ),

          //photo and name and branch
          Positioned(
            top: 150,
            child: Container(
              child: Column(
                //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    //padding: EdgeInsets.fromLTRB(0, 0, 10, 0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: Image.network(
                        'https://drive.google.com/uc?export=download&id=1-mYSwvSe_mlXsuRBLriygnnURC_NodEy',
                        fit: BoxFit.cover,
                        alignment: FractionalOffset.topCenter,
                      ),
                    ),
                    height: 150,
                    width: 150,
                    margin: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                    //padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
                  ),
                  Container(
                    padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                    child: Text(
                      profile.isEmpty
                          ? "Loading profile"
                          : profile[0].user!.username.toString(),
                      style: const TextStyle(
                          fontFamily: 'Voces',
                          fontSize: 20,
                          color: Colors.black),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                    child: Text(
                      profile[0].role.toString(),
                      style: const TextStyle(
                          fontFamily: 'Voces',
                          fontSize: 20,
                          color: Colors.black),
                    ),
                  ),
                ],
              ),
            ),
          ),

          //email
          Container(
              //height: MediaQuery.of(context).size.height,

              margin: const EdgeInsets.fromLTRB(0, 280, 300, 0),
              //padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),

              child: const Text(
                'Email',
                style: TextStyle(
                    fontFamily: 'Voces', fontSize: 20, color: Colors.grey),
              )),

          //email row
          Positioned(
            child: Container(
              margin: const EdgeInsets.fromLTRB(22, 330, 0, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  SizedBox(
                    width: 270,
                    child: Text(
                      profile[0].user!.email.toString(),
                      //  '2020.nachiket.suryawanshi@ves.ac.in',
                      maxLines: null,
                      overflow: TextOverflow.ellipsis,
                      softWrap: true,
                      style: const TextStyle(
                          fontFamily: 'Voces',
                          color: Colors.black,
                          fontSize: 20),
                    ),
                  ),
                  Container(
                      padding: const EdgeInsets.fromLTRB(0, 0, 5, 0),
                      child: const Icon(Icons.email_outlined, size: 35))
                ],
              ),
            ),
          ),

          //phone number
          Container(
              // height: MediaQuery.of(context).size.height,

              //margin: const EdgeInsets.fromLTRB(0, 490, 211.9, 0),
              margin: const EdgeInsets.fromLTRB(0, 430, 215, 0),
              padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
              child: const Text(
                'Phone Number',
                style: TextStyle(
                    fontFamily: 'Voces', fontSize: 20, color: Colors.grey),
              )),

          //phone row
          Positioned(
            child: Container(
              margin: const EdgeInsets.fromLTRB(22, 490, 0, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    profile[0].phone_number.toString(),
                    maxLines: null,
                    softWrap: true,
                    style: const TextStyle(
                        fontFamily: 'Voces', color: Colors.black, fontSize: 20),
                  ),
                  Container(
                      padding: const EdgeInsets.fromLTRB(0, 0, 5, 0),
                      child: const Icon(Icons.call_outlined, size: 35)),
                ],
              ),
            ),
          ),

          //button to upload
          Positioned(
            top: 180,
            child: Container(
              margin: const EdgeInsets.fromLTRB(0, 450, 0, 0),
              child: Center(
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    //primary: Colors.bl,
                    textStyle: const TextStyle(
                        color: Colors.white,
                        fontSize: 10,
                        fontStyle: FontStyle.normal),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      PageRouteBuilder(
                          pageBuilder: (_, a, b) => certi_page(widget.access),
                          transitionDuration: const Duration(seconds: 1),
                          transitionsBuilder: (_, a, __, c) => FadeTransition(
                                opacity: a,
                                child: c,
                              )),
                    );
                  },
                  child: const Text(
                    'View Certificates',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontFamily: 'Ubuntu',
                        fontSize: 17,
                        color: Colors.black),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
