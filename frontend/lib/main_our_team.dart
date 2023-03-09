import 'package:flutter/material.dart';
import 'models/format_team.dart';
import 'page_BE.dart';
import 'page_SE.dart';
import 'page_TE.dart';
import 'page_FACULTY.dart';
import 'package:flip_card/flip_card.dart';
import 'dart:math';
import 'api_class1.dart';

//importing the packages required for integration
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'dart:async';

class team_main extends StatefulWidget {
  @override
  State<team_main> createState() => _team_mainState();
}

class _team_mainState extends State<team_main> {
  List<Council> BE = [];
  List<Council> TE = [];
  List<Council> SE = [];
  List<Council> FACULTY = [];

  bool isLoaded = false;
  void initState() {
    super.initState();
    getGym();
  }

  getGym() async {
    //print("hehe");
    var response = await api().getCouncilList(
        "eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNjgzOTE2MzkyLCJpYXQiOjE2NzYxNDAzOTIsImp0aSI6IjJiZjBiMjY0OGJmYzRhNGViNDIxODk2YzBmMmI2NWIxIiwidXNlcl9pZCI6MX0._-pItytK8JG10c5nH_UeC57R23xLBGrPFFRYcCzzejQ");

    print(response);
    // List decoded = jsonDecode(response);
    List list = (jsonDecode(response) as List<dynamic>);

    print(">>> Gym List retrieved successfully");

    for (var element in list) {
      print("----------------------------------------------------------");
      print(element["link"]);
      for (var coun in element["link"]) {
        Council item = Council.fromJson(coun);
        if (item.council == "BE") {
          BE.add(item);
        } else if (item.council == "TE") {
          TE.add(item);
        }
        // else{
        //    SE.add(item);
        // };
        else if (item.council == "SE") {
          SE.add(item);
        } else {
          FACULTY.add(item);
        }
        ;
      }
      //   Council item = Council.fromJson(element);

      //  if(item.council=="BE"){
      //      BE.add(item);
      //   }
      //   else if(item.council=="TE"){
      //      TE.add(item);
      //   }
      //   else{
      //      SE.add(item);
      //   };

    }
    Future.delayed(Duration(seconds: 2), () {
      isLoaded = true;
      setState(() {});
    });

    print(BE);
    print(TE);
    print(SE);
    print(FACULTY);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 4,
        //length: 3,
        child: Scaffold(
          //Appbar
          appBar: AppBar(
            leading: IconButton(
              icon: Icon(Icons.arrow_back, color: Colors.black),
              onPressed: () => Navigator.of(context).pop(),
            ),
            elevation: 0,
            backgroundColor: Colors.transparent,
            centerTitle: true,
            bottom: const TabBar(
              indicatorColor: Color(0xFF00467f), //the slider
              indicatorSize: TabBarIndicatorSize.label,
              indicatorWeight: 5,
              tabs: [
                Tab(
                    child: Text(
                  'BE',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.black,
                    fontFamily: 'Voces',
                  ),
                )),
                Tab(
                    child: Text(
                  'TE',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.black,
                    fontFamily: 'Voces',
                  ),
                )),
                Tab(
                    child: Text(
                  'SE',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.black,
                    fontFamily: 'Voces',
                  ),
                )),
                Tab(
                    child: Text(
                  'Faculty',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.black,
                    fontFamily: 'Voces',
                  ),
                )),
              ],
            ),
            title: const Text(
              'Our Team',
              style: TextStyle(
                fontSize: 30,
                color: Colors.black,
                fontFamily: 'Ubuntu_Bold',
              ),
              textAlign: TextAlign.center,
            ),
          ),

          body: isLoaded
              ? TabBarView(
                  children: [
                    Container(
                      padding: EdgeInsets.all(20),
                      child: ListView(
                        children: <Widget>[
                          //Code for images part
                          page_BE(BE)
                          //galleryFirst ko call kiya with images as arguments
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(20),
                      child: ListView(
                        children: <Widget>[
                          //Code for images part
                          page_TE(TE)
                          //gallerySecond ko call kiya with images as arguments
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(20),
                      child: ListView(
                        children: <Widget>[
                          //Code for images part
                          page_SE(SE)
                          //galleryThird ko call kiya with images as arguments
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(20),
                      child: ListView(
                        children: <Widget>[
                          //Code for images part
                          page_FACULTY(FACULTY)
                          //galleryFirst ko call kiya with images as arguments
                        ],
                      ),
                    ),
                  ],
                )
              : Center(
                  child: CircularProgressIndicator(),
                ),
        ),
      ),
    );
  }
}
