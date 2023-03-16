import 'package:flutter/material.dart';
import 'api_class1.dart';
import 'home_new.dart';
import 'main_contactus.dart';
import 'models/format_profile_mem.dart';

//importing the packages required for integration
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'dart:async';

// void main() {
//   runApp(const profile());
// }

// class profile extends StatelessWidget {
//   const profile({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       theme: ThemeData(
//         fontFamily: 'Voces',
//       ),
//       home: profile_members(),
//       debugShowCheckedModeBanner: false,
//     );
//   }
// }

class profile_members extends StatefulWidget {
  final String access;
  profile_members(this.access);
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
    //var response = await api().getProfile_MemList("eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNjgzOTYxNjgyLCJpYXQiOjE2NzYxODU2ODIsImp0aSI6IjVhYmRkNDg5OWFhYTQzZjA4YjU5MDAxNWZjZWFhODdjIiwidXNlcl9pZCI6NX0.Tu_uJhVYIlqonbG6la0dkCUKL4X_nTt3uFcCjCfZSt0");
    List decoded = jsonDecode(await api().getProfile_MemList(
            "eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNjgzOTYxNjgyLCJpYXQiOjE2NzYxODU2ODIsImp0aSI6IjVhYmRkNDg5OWFhYTQzZjA4YjU5MDAxNWZjZWFhODdjIiwidXNlcl9pZCI6NX0.Tu_uJhVYIlqonbG6la0dkCUKL4X_nTt3uFcCjCfZSt0"))[
        "post"];
    // print(response);

    // List list = (jsonDecode(response) as List<dynamic>);

    print(decoded);
    print(">>> profile list retrieved successfully");

    for (var element in decoded) {
      print("----------------------------------------------------------");
      print(element["profile"]);
      // for( var coun in element["profile"]){

      Profile_mem item = Profile_mem.fromJson(element as Map<String, dynamic>);
      profile.add(item);
      // }
    }

    // print(profile);

//     var obj = Profile_mem.fromJson(element);
//     var user_details = obj.user;
//     user_details!.map((e){
// print(e.username);
//     }).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          //orange container
          Positioned(
            child: Container(
              margin: const EdgeInsets.fromLTRB(0, 0, 0, 300),
              //padding: EdgeInsets.fromLTRB(57, 10, 10, 0),
              height: 250,
              width: 500,
              decoration: ShapeDecoration(
                //color: Color(0xFF00467f),
                color: Color(0xFFFE735D),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(35.0),
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
              decoration: ShapeDecoration(
                color: Color(0xFF00467f),
                // color: Color(0xFFFE735D),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(35.0),
                ),
              ),
            ),
          ),

          //text
          Positioned(
            child: Container(
              margin: const EdgeInsets.fromLTRB(0, 0, 150, 450),
              //padding: EdgeInsets.fromLTRB(24, 10, 10, 0),
              child: Text(
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
                    padding: EdgeInsets.fromLTRB(0, 0, 10, 0),
                    child: CircleAvatar(
                      backgroundColor: Color(0xFFFE735D),
                      radius: 10,
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(0, 0, 10, 0),
                    child: CircleAvatar(
                      backgroundColor: Color(0xFFFE735D),
                      radius: 10,
                    ),
                  ),
                  Container(
                    child: CircleAvatar(
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
            top: 200,
            child: Container(
              child: Column(
                //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    //padding: EdgeInsets.fromLTRB(0, 0, 10, 0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: Image(
                        image: new AssetImage('assets/user (2).png'),
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
                    padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
                    child: Text(
                      'Aarya Lotke',
                      style: TextStyle(
                          fontFamily: 'Voces',
                          fontSize: 20,
                          color: Colors.black),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
                    child: Text(
                      'CMPN',
                      style: TextStyle(
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

              child: Text(
                'Email',
                style: TextStyle(
                    fontFamily: 'Voces', fontSize: 20, color: Colors.grey),
              )),

          //email row
          Positioned(
            child: Container(
              margin: const EdgeInsets.fromLTRB(22, 330, 0, 0),
              child: Row(children: [
                //email-id
                Container(
                  padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
                  child: Text(
                    '2020.aarya.lotke@ves.ac.in',
                    style: TextStyle(
                        fontFamily: 'Voces', fontSize: 18, color: Colors.black),
                  ),
                ),

                //icon
                Container(
                  padding: EdgeInsets.fromLTRB(80, 10, 0, 0),
                  child: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.mail_rounded,
                      color: Colors.black,
                      size: 25,
                    ),
                  ),
                )
              ]),
            ),
          ),

          //phone number
          Container(
              // height: MediaQuery.of(context).size.height,

              //margin: const EdgeInsets.fromLTRB(0, 490, 211.9, 0),
              margin: const EdgeInsets.fromLTRB(0, 430, 215, 0),
              padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
              child: Text(
                'Phone Number',
                style: TextStyle(
                    fontFamily: 'Voces', fontSize: 20, color: Colors.grey),
              )),

          //phone row
          Positioned(
            child: Container(
              margin: const EdgeInsets.fromLTRB(22, 490, 0, 0),
              child: Row(children: [
                //email-id
                Container(
                  padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
                  child: Text(
                    '9833040673',
                    style: TextStyle(
                        fontFamily: 'Voces', fontSize: 18, color: Colors.black),
                  ),
                ),

                //icon
                Container(
                  padding: EdgeInsets.fromLTRB(200, 10, 0, 0),
                  child: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.call,
                      color: Colors.black,
                      size: 25,
                    ),
                  ),
                ),
              ]),
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
                  onPressed: () {},
                  child: Text(
                    'Upload your photo',
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
