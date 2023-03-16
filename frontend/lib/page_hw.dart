
import 'package:isa/main_hw.dart';

import 'hw_detail.dart';
import 'main.dart';

import 'package:flutter/material.dart';
import './models/format_hw.dart';
import 'package:provider/provider.dart';
import 'package:path_provider/path_provider.dart';
import 'package:badges/badges.dart';

class page_hw extends StatefulWidget {
  final List<Format> inventory;
  page_hw(this.inventory);

  @override
  State<page_hw> createState() => _page_hwState();
}

class _page_hwState extends State<page_hw> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
// Flexible(
// child:Column(
      // child: GridView.count(
       
      //   crossAxisCount: 2,
      //   crossAxisSpacing: 1,
      //   mainAxisSpacing: 5,

        
        // children: List.generate(5, (index) {
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        // implement GridView.builder
        child:GridView.builder(
        itemCount: widget.inventory.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          
          
            crossAxisSpacing: 1,
        mainAxisSpacing: 5,
        ),
         itemBuilder: (ctx, index) {
          return Container(
              child: Stack(alignment: Alignment.center, children: <Widget>[
            //shadow white container
            Positioned(
              child: Container(
                height: 180,
                width: 175,
                decoration: BoxDecoration(color: Colors.white, boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.5),
                    //spreadRadius: 1,
                    blurRadius: 4,
                    offset: Offset(4.0, 4.0),
                  ),
                ]),
              ),
            ),

            //image
            Positioned(
              child: Container(
                height: 150,
                width: 150,
                margin: const EdgeInsets.fromLTRB(0, 25, 0, 90),
                child: InkWell(
                  onTap: () {
                   Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => hw_detail(
                          widget.inventory[index].id,
                          widget.inventory[index].name,
                          widget.inventory[index].image,
                          widget.inventory[index].Small_Specs,
                          widget.inventory[index].Info,
                         
                          
                          
                          ),
                    ),
                  );
                  },
                  // child: Image(
                  //   image: AssetImage(widget.inventory[index].image),
                  //   fit: BoxFit.cover,
                  //   //alignment: FractionalOffset.topCenter,
                  // ),

                  child: Text(
                 
                 widget.inventory[index].name!,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontFamily: 'Voces', fontSize: 20, color: Colors.black),
                ),
                ),
              ),
            ),

            //name
            Positioned(
              child: Container(
                margin: const EdgeInsets.fromLTRB(20, 50, 20, 0),
                child: Text(
                 
                 widget.inventory[index].name!,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontFamily: 'Voces', fontSize: 20, color: Colors.black),
                ),
              ),
            ),

            //add to cart rectangle
            
            


          ]));
        },
        
    )
    ));
     
  }
}
