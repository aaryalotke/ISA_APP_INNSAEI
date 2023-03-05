import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'db_helper.dart';
import 'cart_provider.dart';
import 'package:badges/badges.dart';
import 'models/format_hw.dart';
//import 'package:passing_data/format.dart';

class hw_detail extends StatelessWidget {
  final Format Hw_dataModel;
  const hw_detail({Key? key, required this.Hw_dataModel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.of(context).pop(),
        ),
        // actions: [
        //   Center(
        //     child: Badge(
        //       badgeContent: Text(
        //         '0',
        //         style: TextStyle(color: Colors.white),
        //       ),
        //       animationDuration: Duration(milliseconds: 300),
        //       child: Icon(Icons.add_shopping_cart, color: Colors.black),
        //     ),
        //   ),
        //   SizedBox(width: 18),
        // ],
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
      body: Column(
        children: [

          
          //small_desc
          Positioned(
            top: MediaQuery.of(context).size.height * 0.1,
            child: Container(
              // height: 40,
              // width: 250,
              margin: const EdgeInsets.fromLTRB(0, 30, 0, 0),
              padding: EdgeInsets.fromLTRB(15, 10, 15, 0),
              child: Text(
                Hw_dataModel.small_desc,
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontFamily: 'Voces', fontSize: 25, color: Colors.black),
              ),
            ),
          ),

          //photo
          Positioned(
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  alignment: FractionalOffset.topCenter,
                  image: new AssetImage(Hw_dataModel.image),
                ),
              ),
              margin: const EdgeInsets.fromLTRB(0, 20, 0, 0),
              padding: EdgeInsets.fromLTRB(0, 5, 0, 5),
              height: 230,
              width: 350,
            ),
          ),

          //info
          Positioned(
            top: MediaQuery.of(context).size.height * 0.1,
            child: Container(
              // height: 40,
              // width: 250,
              margin: const EdgeInsets.fromLTRB(0, 30, 0, 0),
              padding: EdgeInsets.fromLTRB(18, 0, 18, 0),
              child: Text(
                Hw_dataModel.info,
                textAlign: TextAlign.justify,
                style: TextStyle(
                    fontFamily: 'Voces', fontSize: 17, color: Colors.black),
              ),
            ),
          ),
          //   //simple text
          // Positioned(
          //     child: Container(
          //       margin: const EdgeInsets.fromLTRB(0, 40, 0, 0),
          //                  // padding: EdgeInsets.fromLTRB(30, 10, 0, 0),
          //                   child: Text('Add number of quantities',
          //                     textAlign: TextAlign.center,
          //                     style: TextStyle(
          //                         fontFamily: 'Voces',
          //                         fontSize: 20,
          //                         color: Colors.black),
          //                   ),
          //     ),
          //     ),
        ],
      ),
    );
  }
}
