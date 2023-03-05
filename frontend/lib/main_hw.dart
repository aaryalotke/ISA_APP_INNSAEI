import 'package:flutter/material.dart';
import 'cart_screen.dart';
import './models/format_hw.dart';
import 'hw_detail.dart';
import 'db_helper.dart';
import 'cart_provider.dart';
import 'cart_screen.dart';
import 'page_hw.dart';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';
import 'package:badges/badges.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';
//import 'package:shared_preferences/shared_preferences.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => CartProvider(),
      child: Builder(builder: (BuildContext context) {
        return MaterialApp(
          theme: ThemeData(
            fontFamily: 'Voces',
          ),
          home: inventory(),
          debugShowCheckedModeBanner: false,
        );
      }),
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
  final List<Format> hardware = [
    Format(
      id: '1',
      image: 'assets/images/2.jpg',
      name: 'a',
      small_desc: 'xxxxxxxxxxxxxx',
      info:
          'Lorem ipsum dolor sit amet consectetur adipiscing elit semper facilisis ultricies, lectus nulla senectus volutpat magna scelerisque feugiat accumsan curae.',
      //price: 100,
    ),
    Format(
      id: '2',
      image: 'assets/images/1.jpg',
      name: 'b',
      small_desc: 'yyyyyyyyyyyyyyy',
      info:
          'Lorem ipsum dolor sit amet consectetur adipiscing elit semper facilisis ultricies, lectus nulla senectus volutpat magna scelerisque feugiat accumsan curae.',
      //price: 100,
    ),
    Format(
      id: '3',
      image: 'assets/images/2.jpg',
      name: 'c',
      small_desc: 'xxxxxxxxxxxxxx',
      info:
          'Lorem ipsum dolor sit amet consectetur adipiscing elit semper facilisis ultricies, lectus nulla senectus volutpat magna scelerisque feugiat accumsan curae.',
      //price: 100,
    ),
    Format(
      id: '4',
      image: 'assets/images/2.jpg',
      name: 'd',
      small_desc: 'xxxxxxxxxxxxxx',
      info:
          'Lorem ipsum dolor sit amet consectetur adipiscing elit semper facilisis ultricies, lectus nulla senectus volutpat magna scelerisque feugiat accumsan curae.',
      //price: 100,
    ),
    Format(
      id: '5',
      image: 'assets/images/2.jpg',
      name: 'e',
      small_desc: 'xxxxxxxxxxxxxx',
      info:
          'Lorem ipsum dolor sit amet consectetur adipiscing elit semper facilisis ultricies, lectus nulla senectus volutpat magna scelerisque feugiat accumsan curae.',
      // price: 100,
    ),
    Format(
      id: '6',
      image: 'assets/images/2.jpg',
      name: 'f',
      small_desc: 'xxxxxxxxxxxxxx',
      info:
          'Lorem ipsum dolor sit amet consectetur adipiscing elit semper facilisis ultricies, lectus nulla senectus volutpat magna scelerisque feugiat accumsan curae.',
      // price: 100,
    ),
    Format(
      id: '7',
      image: 'assets/images/2.jpg',
      name: 'g',
      small_desc: 'xxxxxxxxxxxxxx',
      info:
          'Lorem ipsum dolor sit amet consectetur adipiscing elit semper facilisis ultricies, lectus nulla senectus volutpat magna scelerisque feugiat accumsan curae.',
      // price: 100,
    ),
    Format(
      id: '8',
      image: 'assets/images/2.jpg',
      name: 'h',
      small_desc: 'xxxxxxxxxxxxxx',
      info:
          'Lorem ipsum dolor sit amet consectetur adipiscing elit semper facilisis ultricies, lectus nulla senectus volutpat magna scelerisque feugiat accumsan curae.',
      // price: 100,
    ),
    Format(
      id: '9',
      image: 'assets/images/2.jpg',
      name: 'i',
      small_desc: 'xxxxxxxxxxxxxx',
      info:
          'Lorem ipsum dolor sit amet consectetur adipiscing elit semper facilisis ultricies, lectus nulla senectus volutpat magna scelerisque feugiat accumsan curae.',
      // price: 100,
    ),
    Format(
      id: '10',
      image: 'assets/images/2.jpg',
      name: 'j',
      small_desc: 'xxxxxxxxxxxxxx',
      info:
          'Lorem ipsum dolor sit amet consectetur adipiscing elit semper facilisis ultricies, lectus nulla senectus volutpat magna scelerisque feugiat accumsan curae.',
      //price: 100,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    final cart = Provider.of<CartProvider>(context);
    return Scaffold(
      //appbar
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.of(context).pop(),
        ),
        actions: [
          InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => CartScreen(hardware)));
            },
            child: Center(
              child: Badge(
                badgeContent: Consumer<CartProvider>(
                  builder: (context, value, child) {
                    return Text(
                      value.getCounter().toString(),
                      style: TextStyle(color: Colors.white),
                    );
                  },
                ),
                animationDuration: Duration(milliseconds: 300),
                child: Icon(Icons.add_shopping_cart, color: Colors.black),
              ),
            ),
          ),
          SizedBox(width: 18),
        ],
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
                child: page_hw(hardware),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
