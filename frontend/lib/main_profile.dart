import 'package:flutter/material.dart';
import 'api_class1.dart';
import 'models/format_profile_mem.dart';

//importing the packages required for integration
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'dart:async';

class profile_members extends StatefulWidget {
  final String access;
  profile_members(this.access);
  @override
  State<profile_members> createState() => _profile_membersState();
}

class _profile_membersState extends State<profile_members> {
  // list format
  final List<Profile_mem> profile = [];

  @override
  void initState() {
    super.initState();
    getpro();
  }

  getpro() async {
    var response = await api().getProfile_MemList(
        "eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNjgzOTYxNjgyLCJpYXQiOjE2NzYxODU2ODIsImp0aSI6IjVhYmRkNDg5OWFhYTQzZjA4YjU5MDAxNWZjZWFhODdjIiwidXNlcl9pZCI6NX0.Tu_uJhVYIlqonbG6la0dkCUKL4X_nTt3uFcCjCfZSt0");
//List decoded = jsonDecode(await api().getProfile_MemList("eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNjgzOTYxNjgyLCJpYXQiOjE2NzYxODU2ODIsImp0aSI6IjVhYmRkNDg5OWFhYTQzZjA4YjU5MDAxNWZjZWFhODdjIiwidXNlcl9pZCI6NX0.Tu_uJhVYIlqonbG6la0dkCUKL4X_nTt3uFcCjCfZSt0"))["post"];
    print(response);

    List list = (jsonDecode(response) as List<dynamic>);
    print(jsonDecode(response));
    print(">>> profile list retrieved successfully");
    print(profile.length);
    Profile_mem item = Profile_mem.fromJson(
        jsonDecode(response)[0]["profile"] as Map<String, dynamic>);

    print(item);
    profile.add(item);
    print(profile.length);
    print(profile[0]);

    // print(decoded);

    setState(() {});
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
              height: 200,
              width: 500,
              // decoration: ShapeDecoration(

              //   color: Color(0xFFFE735D),
              //   shape: RoundedRectangleBorder(
              //     borderRadius: BorderRadius.circular(35.0),
              //   ),
              // ),

              decoration: BoxDecoration(
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

              decoration: BoxDecoration(
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
                      child: Image.asset(
                        'assets/images/user.png',
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
                      profile.isEmpty
                          ? "Loading profile"
                          : profile[0].user!.username.toString(),
                      style: TextStyle(
                          fontFamily: 'Voces',
                          fontSize: 20,
                          color: Colors.black),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
                    child: Text(
                      profile[0].role.toString(),
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
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                    width: 270,
                    child: Text(
                      profile[0].user!.email.toString(),
                      //  '2020.nachiket.suryawanshi@ves.ac.in',
                      maxLines: null,
                      overflow: TextOverflow.ellipsis,
                      softWrap: true,
                      style: TextStyle(
                          fontFamily: 'Voces',
                          color: Colors.black,
                          fontSize: 20),
                    ),
                  ),
                  Container(
                      padding: EdgeInsets.fromLTRB(0, 0, 5, 0),
                      child: Icon(Icons.email_outlined, size: 35))
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
              child: Text(
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
                    style: TextStyle(
                        fontFamily: 'Voces', color: Colors.black, fontSize: 20),
                  ),
                  Container(
                      padding: EdgeInsets.fromLTRB(0, 0, 5, 0),
                      child: Icon(Icons.call_outlined, size: 35)),
                ],
              ),
            ),
          ),

          // //button to upload
          // Positioned(
          //   top: 180,
          //   child: Container(
          //     margin: const EdgeInsets.fromLTRB(0, 450, 0, 0),
          //     child: Center(
          //       child: ElevatedButton(
          //         style: ElevatedButton.styleFrom(
          //           //primary: Colors.bl,
          //           textStyle: const TextStyle(
          //               color: Colors.white,
          //               fontSize: 10,
          //               fontStyle: FontStyle.normal),
          //         ),
          //         onPressed: () {},
          //         child: Text(
          //           'Upload your photo',
          //           textAlign: TextAlign.center,
          //           style: TextStyle(
          //               fontFamily: 'Ubuntu',
          //               fontSize: 17,
          //               color: Colors.black),
          //         ),
          //       ),
          //     ),
          //   ),
          // )
        ],
      ),
    );
  }
}
