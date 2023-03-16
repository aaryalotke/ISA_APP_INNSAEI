import 'package:flutter/material.dart';
import './models/format_hw.dart';
import 'api_class1.dart';
import 'hw_detail.dart';
import 'page_hw.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';
import 'package:badges/badges.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';
//import 'package:shared_preferences/shared_preferences.dart';

////////////////---INTEGRATION PART---///////////////////////////////////////

//importing the packages required for integration
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'dart:async';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    
        return MaterialApp(
          theme: ThemeData(
            fontFamily: 'Voces',
          ),
          home: inventory(),
          debugShowCheckedModeBanner: false,
        );
     
  }
}

class inventory extends StatefulWidget {
  @override
  State<inventory> createState() => _inventoryState();
}

class _inventoryState extends State<inventory> {
  // DBHelper dbHelper= DBHelper();

  //hardware list
  final List<Format> inventory = [
    
  ];

  bool isLoaded = false;
void initState(){
  super.initState();
  getinventory();
}
  getinventory() async {

    var response = await api().getInventoryList("eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNjgzOTYxNjgyLCJpYXQiOjE2NzYxODU2ODIsImp0aSI6IjVhYmRkNDg5OWFhYTQzZjA4YjU5MDAxNWZjZWFhODdjIiwidXNlcl9pZCI6NX0.Tu_uJhVYIlqonbG6la0dkCUKL4X_nTt3uFcCjCfZSt0");

    print(response);
    // List decoded = jsonDecode(response);
    List list = (jsonDecode(response) as List<dynamic>) ;
    
    print(">>> inventory list retrieved successfully");


    
    for (var element in list) {
      print("----------------------------------------------------------");
      print(element["ComponentList"]);
      for( var coun in element["ComponentList"]){

        Format item = Format.fromJson(coun);
         inventory.add(item);
      

      }
    }
    
    
    print(inventory[0].name!);
    
  }

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      //appbar
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.of(context).pop(),
        ),
        
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        title: Text(
          'Hardware Inventory',
          style: TextStyle(
            fontSize: 30,
            color: Colors.black,
            fontFamily: 'Ubuntu_Bold',
          ),
          textAlign: TextAlign.center,
        ),
      ),

      //carousal
      body: SafeArea(
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height * 1,
          child: Stack(clipBehavior: Clip.antiAlias, children: <Widget>[
            Container(
              width: double.infinity,
              margin: EdgeInsets.only(top: 25, bottom: 50),
              child: CarouselSlider(
                items: [
                  Container(
                    height: 180,
                    width: 350,
                    child: Image.asset(
                      'assets/images/1.jpg',
                      height: MediaQuery.of(context).size.height * 0.3,
                      fit: BoxFit.cover,
                      // width: MediaQuery.of(context).size.width*0.99,
                    ),
                  ),
                  Container(
                    height: 180,
                    width: 350,
                    child: Image.asset(
                      'assets/images/2.jpg',
                      height: MediaQuery.of(context).size.height * 0.3,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Container(
                    height: 180,
                    width: 350,
                    child: Image.asset(
                      'assets/images/3.png',
                      height: MediaQuery.of(context).size.height * 0.3,
                      fit: BoxFit.cover,
                    ),
                  )
                ],
                options: CarouselOptions(
                  height: MediaQuery.of(context).size.height * 0.25,
                  // aspectRatio: 16/9,
                  enlargeCenterPage: true,
                  autoPlay: true,
                  autoPlayAnimationDuration: Duration(milliseconds: 800),
                  viewportFraction: 0.9,
                ),
              ),
            ),

            //simple text
            Positioned(
              child: Container(
                margin: const EdgeInsets.fromLTRB(20, 250, 20, 0),
                child: Text(
                  'Book your components now',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontFamily: 'Ubuntu_Bold',
                      fontSize: 25,
                      color: Colors.black),
                ),
              ),
            ),

            //passing page for displaying list
            Positioned(
              child: Container(
                margin: const EdgeInsets.fromLTRB(5, 300, 5, 0),
                child: page_hw(inventory),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
