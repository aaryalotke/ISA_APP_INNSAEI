
import 'package:isa/main_hw.dart';
import 'package:flip_card/flip_card.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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
//     return Scaffold(
// // Flexible(
// // child:Column(
//       // child: GridView.count(
       
//       //   crossAxisCount: 2,
//       //   crossAxisSpacing: 1,
//       //   mainAxisSpacing: 5,

        
//         // children: List.generate(5, (index) {
//       body: Padding(
//         padding: const EdgeInsets.all(8.0),
//         // implement GridView.builder
//         child:GridView.builder(
//         itemCount: widget.inventory.length,
//         gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//           crossAxisCount: 2,
          
          
//             crossAxisSpacing: 1,
//         mainAxisSpacing: 5,
//         ),
//          itemBuilder: (ctx, index) {
//           return Container(
//               child: Stack(alignment: Alignment.center, children: <Widget>[
//             //shadow white container
//             Positioned(
//               child: Container(
//                 height: 180,
//                 width: 175,
//                 decoration: BoxDecoration(color: Colors.white, boxShadow: [
//                   BoxShadow(
//                     color: Colors.black.withOpacity(0.5),
//                     //spreadRadius: 1,
//                     blurRadius: 4,
//                     offset: Offset(4.0, 4.0),
//                   ),
//                 ]),
//               ),
//             ),

//             //image
//             Positioned(
//               child: Container(
//                 height: 150,
//                 width: 150,
//                 margin: const EdgeInsets.fromLTRB(0, 25, 0, 90),
//                 child: InkWell(
//                   onTap: () {
//                    Navigator.push(
//                     context,
//                     MaterialPageRoute(
//                       builder: (context) => hw_detail(
//                           widget.inventory[index].id,
//                           widget.inventory[index].name,
//                           widget.inventory[index].image,
//                           widget.inventory[index].Small_Specs,
//                           widget.inventory[index].Info,
                         
                          
                          
//                           ),
//                     ),
//                   );
//                   },
//                   // child: Image(
//                   //   image: AssetImage(widget.inventory[index].image),
//                   //   fit: BoxFit.cover,
//                   //   //alignment: FractionalOffset.topCenter,
//                   // ),

//                   child: Text(
                 
//                  widget.inventory[index].name!.toString(),
//                 //  'hi',
//                   textAlign: TextAlign.center,
//                   style: TextStyle(
//                       fontFamily: 'Voces', fontSize: 20, color: Colors.black),
//                 ),
//                 ),
//               ),
//             ),

//             //name
//             Positioned(
//               child: Container(
//                 margin: const EdgeInsets.fromLTRB(20, 50, 20, 0),
//                 child: Text(
                 
//                  widget.inventory[index].name!.toString(),
//                 // 'hi',
//                   textAlign: TextAlign.center,
//                   style: TextStyle(
//                       fontFamily: 'Voces', fontSize: 20, color: Colors.black),
//                 ),
//               ),
//             ),

           
            
            


//           ]));
//         },
        
//     )
//     ));


  // return Container(
  //        height: MediaQuery.of(context).size.height,
  //       width: MediaQuery.of(context).size.width,
  //       //padding: EdgeInsets.only(bottom: 300), //Necessary to prevent Renderbox error
  //       margin: EdgeInsets.fromLTRB(0, 0, 0, 10),
  //       child: ListView.builder(
  //         padding: EdgeInsets.only(bottom: 0),
  //         shrinkWrap: true,
  //         physics: ClampingScrollPhysics(),
  //         //physics: NeverScrollableScrollPhysics(),

  //         itemBuilder: (ctx, index) {
  //           //Itembuilder helps us loop through the list
  //           if (index % 2 == 0) {
  //             return Card(
  //                 elevation: 0,
  //                 color: Colors.transparent,
  //                 margin: EdgeInsets.all(10),
  //                 child: Stack(
  //                   alignment: Alignment.center, children: <Widget>[
  //                   FlipCard(
  //                     direction: FlipDirection.HORIZONTAL,
  //                     front:
  //                         Stack(alignment: Alignment.center, children: <Widget>[
  //                       //blue container
  //                       Positioned(
  //                         child: Container(
  //                           // child: Text(
  //                           //   widget.inventory[0].image!.toString(),
  //                           //   ),
  //                           margin: const EdgeInsets.fromLTRB(20, 0, 10, 0),
  //                           padding: EdgeInsets.fromLTRB(57, 10, 10, 0),
  //                           height: 100,
  //                           width: 300,
  //                           decoration: ShapeDecoration(
  //                             color: Color(0xFF00467f),
  //                             shape: RoundedRectangleBorder(
  //                               borderRadius: BorderRadius.circular(15.0),
  //                             ),
  //                           ),
  //                         ),
  //                       ),

  //                       //white container
  //                       Positioned(
  //                         child: Container(
  //                           height: 90,
  //                           width: 290,
  //                           margin: const EdgeInsets.fromLTRB(20, 0, 0, 0),
  //                           padding: EdgeInsets.fromLTRB(57, 10, 10, 0),
  //                           decoration: ShapeDecoration(
  //                             color: Colors.white,
  //                             shape: RoundedRectangleBorder(
  //                               borderRadius: BorderRadius.circular(15.0),
  //                             ),
  //                           ),
  //                         ),
  //                       ),

  //                       //photo!
  //                       Positioned(
  //                         child: Container(
  //                           // child: ClipRRect(
  //                           //   borderRadius: BorderRadius.circular(15),
  //                           //   child: Image.network(
  //                           //     widget.inventory[index].image!,
  //                           //     alignment: FractionalOffset.topCenter,
  //                           //     fit: BoxFit.cover,
  //                           //     //image:Image.network( widget.TE[index].photo!),
  //                           //     //fit: BoxFit.cover,
  //                           //     //alignment: FractionalOffset.topCenter,
  //                           //   ),
  //                           // ),

  //                                           child: InkWell(
  //                 onTap: () {
  //                  Navigator.push(
  //                   context,
  //                   MaterialPageRoute(
  //                     builder: (context) => hw_detail(
  //                         widget.inventory[index].id,
  //                         widget.inventory[index].name,
  //                         widget.inventory[index].image,
  //                         widget.inventory[index].Small_Specs,
  //                         widget.inventory[index].Info,
                         
                          
                          
  //                         ),
  //                   ),
  //                 );
  //                 },
  //                   child: Image.network(
  //                               widget.inventory[index].image!,
  //                               alignment: FractionalOffset.topCenter,
  //                               fit: BoxFit.cover,
  //                   ),
  //                                           ),

  //                           margin: const EdgeInsets.fromLTRB(0, 8, 0, 0),
  //                           // padding: EdgeInsets.fromLTRB(0, 5, 0, 5),
  //                           height: 70,
  //                           width: 70,
  //                         ),
  //                       ),

  //                       //text
  //                       Positioned(
  //                         child: Container(
  //                           margin: const EdgeInsets.fromLTRB(70, 250, 20, 0),
  //                           padding: EdgeInsets.fromLTRB(30, 10, 0, 0),
  //                           child: Text(
  //                             widget.inventory[index].name!.toString(),
  //                             textAlign: TextAlign.center,
  //                             style: TextStyle(
  //                                 fontFamily: 'Voces',
  //                                 fontSize: 20,
  //                                 color: Colors.black),
  //                           ),
  //                         ),
  //                       ),

  //                       // small circle
  //                       Positioned(
  //                         child: Container(
  //                           height: 40,
  //                           width: 40,
  //                           margin: const EdgeInsets.fromLTRB(260, 0, 0, 100),
  //                           padding: EdgeInsets.fromLTRB(57, 10, 10, 0),
  //                           decoration: new BoxDecoration(
  //                             color: Color(0xFF00467f),
  //                             shape: BoxShape.circle,
  //                           ),
  //                         ),
  //                       ),

  //                       //fast forward
  //                       Positioned(
  //                         child: Container(
  //                           height: 70,
  //                           width: 70,
  //                           margin: const EdgeInsets.fromLTRB(163, 0, 0, 225),
  //                           padding: EdgeInsets.fromLTRB(57, 10, 10, 0),
  //                           child: IconButton(
  //                             onPressed: () {},
  //                             icon: Icon(
  //                               FontAwesomeIcons.chevronRight,
  //                               color: Colors.white,
  //                               size: 40,
  //                             ),
  //                           ),
  //                         ),
  //                       ),

  //                       Positioned(
  //                         child: Container(
  //                           height: 70,
  //                           width: 70,
  //                           margin: const EdgeInsets.fromLTRB(200, 0, 0, 225),
  //                           padding: EdgeInsets.fromLTRB(57, 10, 10, 0),
  //                           child: IconButton(
  //                             onPressed: () {},
  //                             icon: Icon(
  //                               FontAwesomeIcons.chevronRight,
  //                               color: Colors.white,
  //                               size: 40,
  //                             ),
  //                           ),
  //                         ),
  //                       ),
  //                     ]),
  //                     back: Stack(
  //                       alignment: Alignment.center,
  //                       children: <Widget>[
  //                         //blue container
  //                         Positioned(
  //                           child: Container(
  //                             margin: const EdgeInsets.fromLTRB(20, 50, 10, 0),
  //                             padding: EdgeInsets.fromLTRB(57, 10, 10, 0),
  //                             height: 300,
  //                             width: 300,
  //                             decoration: ShapeDecoration(
  //                               color: const Color(0xFF00467F).withOpacity(0.9),
  //                               shape: RoundedRectangleBorder(
  //                                 borderRadius: BorderRadius.circular(15.0),
  //                               ),
  //                             ),
  //                           ),
  //                         ),

  //                         //small circle
  //                         Positioned(
  //                           child: Container(
  //                             height: 70,
  //                             width: 70,
  //                             margin: const EdgeInsets.fromLTRB(0, 0, 240, 210),
  //                             padding: EdgeInsets.fromLTRB(57, 10, 10, 0),
  //                             decoration: new BoxDecoration(
  //                               color: Color(0xFF00467F),
  //                               shape: BoxShape.circle,
  //                             ),
  //                           ),
  //                         ),

  //                         //fast forward
  //                         Positioned(
  //                           child: Container(
  //                             height: 70,
  //                             width: 70,
  //                             margin: const EdgeInsets.fromLTRB(0, 0, 188, 225),
  //                             padding: EdgeInsets.fromLTRB(0, 10, 100, 0),
  //                             child: IconButton(
  //                               onPressed: () {},
  //                               icon: Icon(
  //                                 FontAwesomeIcons.chevronRight,
  //                                 color: Colors.white,
  //                                 size: 40,
  //                               ),
  //                             ),
  //                           ),
  //                         ),

  //                         Positioned(
  //                           child: Container(
  //                             height: 70,
  //                             width: 70,
  //                             margin: const EdgeInsets.fromLTRB(0, 0, 225, 225),
  //                             padding: EdgeInsets.fromLTRB(0, 10, 100, 0),
  //                             child: IconButton(
  //                               onPressed: () {},
  //                               icon: Icon(
  //                                 FontAwesomeIcons.chevronRight,
  //                                 color: Colors.white,
  //                                 size: 40,
  //                               ),
  //                             ),
  //                           ),
  //                         ),

  //                         //post
  //                         Container(
  //                           height: 200,
  //                           width: 300,
  //                           margin: EdgeInsets.only(
  //                               top: 65.0, left: 20.0, right: 0.0, bottom: 0.0),
  //                           // padding: EdgeInsets.fromLTRB(57, 10, 10, 0),
  //                           child: Text(
  //                             widget.inventory[index].name!.toString(),
  //                             textAlign: TextAlign.center,
  //                             style: TextStyle(
  //                                 fontFamily: 'Voces',
  //                                 fontSize: 32,
  //                                 color: Colors.white),
  //                           ),
  //                         ),

  //                         //social text
  //                         Container(
  //                           height: 70,
  //                           width: 70,
  //                           margin: EdgeInsets.only(
  //                               top: 120.0,
  //                               left: 20.0,
  //                               right: 0.0,
  //                               bottom: 0.0),
  //                           // padding: EdgeInsets.fromLTRB(57, 10, 10, 0),
  //                           child: Text(
  //                             "Social",
  //                             textAlign: TextAlign.center,
  //                             style: TextStyle(
  //                                 fontFamily: 'Voces',
  //                                 fontSize: 25,
  //                                 color: Colors.black),
  //                           ),
  //                         ),

                         
  //                       ],
  //                     ),
  //                   )
  //                 ]));
  //           } else {
  //             return Card(
  //               elevation: 0,
  //               color: Colors.transparent,
  //               margin: EdgeInsets.all(10),
  //               child: Stack(
  //                 alignment: Alignment.center,
  //                 children: <Widget>[
  //                   FlipCard(
  //                     front:
  //                         Stack(alignment: Alignment.center, children: <Widget>[
  //                       //orange container
  //                       Positioned(
  //                         child: Container(
  //                           margin: const EdgeInsets.fromLTRB(20, 50, 10, 0),
  //                           padding: EdgeInsets.fromLTRB(57, 10, 10, 0),
  //                           height: 300,
  //                           width: 300,
  //                           decoration: ShapeDecoration(
  //                             color: Color(0xFFFE735D),
  //                             shape: RoundedRectangleBorder(
  //                               borderRadius: BorderRadius.circular(15.0),
  //                             ),
  //                           ),
  //                         ),
  //                       ),

  //                       //white container
  //                       Positioned(
  //                         child: Container(
  //                           height: 290,
  //                           width: 290,
  //                           margin: const EdgeInsets.fromLTRB(0, 40, 0, 0),
  //                           padding: EdgeInsets.fromLTRB(57, 10, 10, 0),
  //                           decoration: ShapeDecoration(
  //                             color: Colors.white,
  //                             shape: RoundedRectangleBorder(
  //                               borderRadius: BorderRadius.circular(15.0),
  //                             ),
  //                           ),
  //                         ),
  //                       ),

  //                       //photo!
  //                       Positioned(
  //                         child: Container(
  //                           child: ClipRRect(
  //                             borderRadius: BorderRadius.circular(15),
  //                             child: Image.network(
  //                               widget.inventory[index].image!.toString(),
  //                               alignment: FractionalOffset.topCenter,
  //                               fit: BoxFit.cover,
  //                               //image:Image.network( widget.TE[index].photo!),
  //                               //fit: BoxFit.cover,
  //                               //alignment: FractionalOffset.topCenter,
  //                             ),
  //                           ),
  //                           margin: const EdgeInsets.fromLTRB(0, 8, 18, 0),
  //                           padding: EdgeInsets.fromLTRB(0, 5, 0, 5),
  //                           height: 270,
  //                           width: 270,
  //                         ),
  //                       ),

  //                       // //text
  //                       Positioned(
  //                         child: Container(
  //                           margin: const EdgeInsets.fromLTRB(0, 290, 10, 0),
  //                           padding: EdgeInsets.fromLTRB(24, 10, 10, 0),
  //                           child: Text(
  //                             widget.inventory[index].name!.toString(),
  //                             textAlign: TextAlign.center,
  //                             style: TextStyle(
  //                                 fontFamily: 'Voces',
  //                                 fontSize: 20,
  //                                 color: Colors.black),
  //                           ),
  //                         ),
  //                       ),

  

  
  //                     ]),
  //                     back:
  //                         Stack(alignment: Alignment.center, children: <Widget>[
  //                       //orange container
  //                       Positioned(
  //                         child: Container(
  //                           margin: const EdgeInsets.fromLTRB(20, 50, 10, 0),
  //                           padding: EdgeInsets.fromLTRB(57, 10, 10, 0),
  //                           height: 300,
  //                           width: 300,
  //                           decoration: ShapeDecoration(
  //                             color: Color(0xFFFE735D).withOpacity(0.9),
  //                             shape: RoundedRectangleBorder(
  //                               borderRadius: BorderRadius.circular(15.0),
  //                             ),
  //                           ),
  //                         ),
  //                       ),

  

  //                       //post
  //                       Container(
  //                         height: 200,
  //                         width: 300,
  //                         margin: EdgeInsets.only(
  //                             top: 65.0, left: 20.0, right: 0.0, bottom: 0.0),
  //                         // padding: EdgeInsets.fromLTRB(57, 10, 10, 0),
  //                         child: Text(
  //                           widget.inventory[index].name!.toString(),
  //                           textAlign: TextAlign.center,
  //                           style: TextStyle(
  //                               fontFamily: 'Voces',
  //                               fontSize: 32,
  //                               color: Colors.white),
  //                         ),
  //                       ),

  //                       //social text
  //                       Container(
  //                         height: 70,
  //                         width: 70,
  //                         margin: EdgeInsets.only(
  //                             top: 120.0, left: 20.0, right: 0.0, bottom: 0.0),
  //                         // padding: EdgeInsets.fromLTRB(57, 10, 10, 0),
  //                         child: Text(
  //                           "Social",
  //                           textAlign: TextAlign.center,
  //                           style: TextStyle(
  //                               fontFamily: 'Voces',
  //                               fontSize: 25,
  //                               color: Colors.black),
  //                         ),
  //                       ),

                        
  //                     ]),
  //                   )
  //                 ],
  //               ),
  //             );
  //           }
  //         },
  //         itemCount: widget.inventory.length,
  //       )
  //       );



  


    return Container(
         height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        //padding: EdgeInsets.only(bottom: 300), //Necessary to prevent Renderbox error
        margin: EdgeInsets.fromLTRB(0, 15, 0, 10),
        child: ListView.builder(
          padding: EdgeInsets.only(bottom: 0),
          shrinkWrap: true,
          physics: ClampingScrollPhysics(),
          //physics: NeverScrollableScrollPhysics(),

          itemBuilder: (ctx, index) {
            //Itembuilder helps us loop through the list
            if (index % 2 == 0) {
              return Card(
                  elevation: 0,
                  color: Colors.transparent,
                   margin: EdgeInsets.fromLTRB(0, 10, 0, 10),
                  child: Stack(
                    alignment: Alignment.center, children: <Widget>[
                    FlipCard(
                      direction: FlipDirection.HORIZONTAL,
                      front:
                          Stack(alignment: Alignment.center, children: <Widget>[
                        //blue container
                        Positioned(
                          child: Container(
                            margin: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                            padding: EdgeInsets.fromLTRB(57, 0, 10, 0),
                            height: 150,
                            width: 350,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(5)),
                              gradient: LinearGradient(
                                colors: [Color(0xFF00467f),Colors.white],
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight

                                ),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey,
                                    blurRadius: 10,
                                    offset: Offset(0,6),
                                  )
                                ]
                                 ),
                                 
                            
                          ),
                        ),
            //image
            Positioned(
              child: Container(
                height: 120,
                width: 120,
                margin: const EdgeInsets.fromLTRB(0, 0, 215, 0),
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
                                child: Image.network(
                                widget.inventory[index].image!,
                                alignment: FractionalOffset.topCenter,
                                fit: BoxFit.cover,
                                ),
                ),
              ),
            ),


                            
                        //text
                        Positioned(
                          child: Container(
                            margin: const EdgeInsets.fromLTRB(60, 0, 0, 10),
                            padding: EdgeInsets.fromLTRB(40, 10, 0, 0),
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
                              child: FittedBox(
                                child: Text(
                                  
                                  widget.inventory[index].name!.toString(),
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    
                                      fontFamily: 'Voces',
                                      fontSize: 20,
                                      color: Colors.black),
                                ),
                              ),
                            ),
                          ),
                        ),
                        
                      ]),
                      back: Stack(
                        alignment: Alignment.center,
                        children: <Widget>[
                          //blue container
                        Positioned(
                          child: Container(
                            margin: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                            padding: EdgeInsets.fromLTRB(57, 0, 10, 0),
                            height: 150,
                            width: 350,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(5)),
                               color: Color(0xFF00467f).withOpacity(0.9),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey,
                                    blurRadius: 10,
                                    offset: Offset(0,6),
                                  )
                                ]
                                 ),
                           
                            
                          ),
                        ),

                          

                          //available
                          Container(
                            // height: 200,
                            // width: 300,
                            margin: EdgeInsets.only(
                                top: 5.0, left: 0.0, right: 0.0, bottom: 0.0),
                            // padding: EdgeInsets.fromLTRB(57, 10, 10, 0),

                            child: widget.inventory[index].name!.toString() == "true" ? Text(
                              "Not Available",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontFamily: 'Voces',
                                  fontSize: 32,
                                  color: Colors.white),
                            ) : Text(
                              "Available",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontFamily: 'Voces',
                                  fontSize: 32,
                                  color: Colors.white),
                              ),
                          ),

                         

                         
                        ],
                      ),
                    )
                  ]));
            } else {
              return Card(
                elevation: 0,
                color: Colors.transparent,
                 margin: EdgeInsets.fromLTRB(0, 15, 0, 10),
                child: Stack(
                  alignment: Alignment.center,
                  children: <Widget>[
                    FlipCard(
                      front:
                          Stack(alignment: Alignment.center, children: <Widget>[
                        //orange container
                        Positioned(
                          child: Container(
                             margin: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                            padding: EdgeInsets.fromLTRB(57, 0, 10, 0),
                            height: 150,
                            width: 350,
                            decoration: BoxDecoration(
                              // borderRadius:BorderRadius.circular(24),
                              // border: Border.all(width: 1, color: Colors.black),
                              borderRadius: BorderRadius.all(Radius.circular(5)),
                              gradient: LinearGradient(
                                colors: [Color(0xFFFE735D),Colors.white],
                                // colors: [Colors.pink,Colors.red],
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight

                                ),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey,
                                    blurRadius: 10,
                                    offset: Offset(0,6),
                                  )
                                ]
                                 ),
                            
                          ),
                        ),

                        // //white container
                        // Positioned(
                        //   child: Container(
                        //    height: 90,
                        //     width: 340,
                        //     margin: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                        //     padding: EdgeInsets.fromLTRB(57, 10, 10, 0),
                        //     // decoration: ShapeDecoration(
                        //     //   color: Colors.white,
                        //     //   shape: RoundedRectangleBorder(
                        //     //     borderRadius: BorderRadius.circular(15.0),
                        //     //   ),
                        //     // ),
                        //     color: Colors.white,
                        //   ),
                        // ),

            //              //image
            Positioned(
              child: Container(
                height: 120,
                width: 120,
                margin: const EdgeInsets.fromLTRB(0, 0, 215, 0),
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
                                child: Image.network(
                                widget.inventory[index].image!,
                                alignment: FractionalOffset.topCenter,
                                fit: BoxFit.cover,
                                ),
                ),
              ),
            ),

                        //text
                        Positioned(
                          child: Container(
                            margin: const EdgeInsets.fromLTRB(60, 0, 0, 10),
                            padding: EdgeInsets.fromLTRB(40, 10, 0, 0),
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
                              child: Flexible(
                                child: Text(
                                  widget.inventory[index].name!.toString(),
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontFamily: 'Voces',
                                      fontSize: 20,
                                      color: Colors.black),
                                ),
                              ),
                            ),
                          ),
                        ),

                        

                        
                      ]),
                      back:
                          Stack(alignment: Alignment.center, children: <Widget>[
                        //orange container
                          Positioned(
                          child: Container(
                            margin: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                            padding: EdgeInsets.fromLTRB(57, 0, 10, 0),
                            height: 150,
                            width: 350,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(5)),
                               color:  Color(0xFFFE735D).withOpacity(0.9),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey,
                                    blurRadius: 10,
                                    offset: Offset(0,6),
                                  )
                                ]
                                 ),
                           
                            
                          ),
                        ),

                          

                          //available
                          Container(
                            // height: 200,
                            // width: 300,
                            margin: EdgeInsets.only(
                                top: 5.0, left: 0.0, right: 0.0, bottom: 0.0),
                            // padding: EdgeInsets.fromLTRB(57, 10, 10, 0),

                            child: widget.inventory[index].name!.toString() == "true" ? Text(
                              "Not Available",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontFamily: 'Voces',
                                  fontSize: 32,
                                  color: Colors.white),
                            ) : Text(
                              "Available",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontFamily: 'Voces',
                                  fontSize: 32,
                                  color: Colors.white),
                              ),
                          ),


                           
                        
                        
                      ]),
                    )
                  ],
                ),
              );
            }
          },
          itemCount: widget.inventory.length,
        )
        );



  
     
  }
}
