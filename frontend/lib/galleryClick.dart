// ignore_for_file: file_names, sized_box_for_whitespace, prefer_const_constructors

import "package:flutter/material.dart";
import 'package:carousel_slider/carousel_slider.dart';
import "./models/gallery.dart";

class galleryClick extends StatefulWidget {
  final  image_id;
  final image_name;
  final image_pic1;
  final image_pic2;
  final image_pic3;
  final image_startdate;
  final image_enddate;
  final image_description;

  //   final int image_id;
  // final String image_name;
  // final String image_pic1;
  // final String image_pic2;
  // final String image_pic3;
  // final String image_startdate;
  // final String image_enddate;
  // final String image_description;

  galleryClick(this.image_id, this.image_name, this.image_pic1, this.image_pic2, this.image_pic3, this.image_startdate, this.image_enddate, this.image_description); //Recieved image id

  //   final List<gallery> software;
  //   final List<gallery> hardware;
  //   final List<gallery> others;
  // galleryClick(this.software, this.hardware,this.others);


  @override
  State<galleryClick> createState() => _galleryClickState();
}

class _galleryClickState extends State<galleryClick> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        //Appbar
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.arrow_back, color: Colors.black),
            onPressed: () => Navigator.of(context).pop(),
          ),
          elevation: 0,
          backgroundColor: Colors.transparent,
          centerTitle: true,
          title: const Text(
            'Gallery',
            style: TextStyle(
              fontSize: 30,
              color: Colors.black,
              fontFamily: 'Ubuntu_Bold',
            ),
            textAlign: TextAlign.center,
          ),
        ),

        body: Container(
          height: MediaQuery.of(context).size.height,
          width: double.infinity,

          //Stack starts
          child: Stack(
            clipBehavior: Clip.antiAlias,
            alignment: Alignment.center,
            children: <Widget>[
              //Container for CarouselSlider
              Container(
                width: double.infinity,
                margin: EdgeInsets.only(top: 0, bottom: 300),
                padding: EdgeInsets.only(top: 20),
                // decoration: BoxDecoration(border: Border.all()),
                child: CarouselSlider(
                  items: [
                    // Container(
                    //   child: Column(
                    //     children: <Widget>[
                    //       Image.asset(
                    //         'assets/images/ISAintro_vector.png',
                    //         height: MediaQuery.of(context).size.height * 0.3,
                    //       ),
                    //       Text(
                    //         'Bridging the gap between the student community and industry.',
                    //         textAlign: TextAlign.center,
                    //         style: TextStyle(fontSize: 18),
                    //       )
                    //     ],
                    //   ),
                    // ),
                    Container(
                      //1st slide of Carousel
                      child: Column(
                        children: <Widget>[
                          // Image.asset(
                          //   'assets/images/Hardware_vector.png',
                          //   height: MediaQuery.of(context).size.height * 0.3,
                          // ),
                          // Text(
                          //   'One-stop for mastering the hardware skills!',
                          //   textAlign: TextAlign.center,
                          //   style: TextStyle(fontSize: 18),
                          // )
                          Image.network(
                      widget.image_pic1.toString(),
                      height: MediaQuery.of(context).size.height * 0.3,
                    ),


                        ],
                      ),
                    ),
                    Container(
                      //2nd slide of Carousel
                      child: Column(
                        children: <Widget>[
                          // Image.asset(
                          //   'assets/images/Software_vector.png',
                          //   height: MediaQuery.of(context).size.height * 0.3,
                          // ),
                          // Text(
                          //   'Learn and Master the best software technologies effortlessly!',
                          //   textAlign: TextAlign.center,
                          //   style: TextStyle(fontSize: 18),
                          // )
                           Image.network(
                      widget.image_pic2.toString(),
                      height: MediaQuery.of(context).size.height * 0.3,
                    ),
                        ],
                      ),
                    ),
                    Container(
                      //3rd slide of Carousel
                      child: Column(
                        children: <Widget>[
                          // Image.asset(
                          //   'assets/images/Initiatives_vector.png',
                          //   height: MediaQuery.of(context).size.height * 0.3,
                          // ),
                          // Text(
                          //   'The best initiatives and events to ease your learning experience.',
                          //   textAlign: TextAlign.center,
                          //   style: TextStyle(fontSize: 18),
                          // )
                           Image.network(
                      widget.image_pic3.toString(),
                      height: MediaQuery.of(context).size.height * 0.3,
                    ),
                        ],
                      ),
                    ),
                  ],
                  options: CarouselOptions(
                    height: MediaQuery.of(context).size.height * 0.5,
                    enlargeCenterPage: true,
                    autoPlay: true,
                    // aspectRatio: 16 / 9,
                    autoPlayCurve: Curves.fastOutSlowIn,
                    enableInfiniteScroll: true,
                    autoPlayAnimationDuration: Duration(milliseconds: 800),
                    viewportFraction: 0.9,
                  ),
                ),
              ),

              //image title i.e, Name of workshop or event
              Positioned(
                top: MediaQuery.of(context).size.height * 0.45,
                child: 
                Container(
       child: 
            Flexible(
               child: new Text(
                  widget.image_name.toString(),
                  textAlign: TextAlign.center,
                  
                  style: TextStyle(
                    fontSize: 24,
                    fontFamily: 'Voces',
                  ),
                ),
                
        ))
                // Container(
                //  // margin: EdgeInsets.all(20),
                // //padding: EdgeInsets.all(10),
                // child: Text(
                //   widget.image_name.toString(),
                //   textAlign: TextAlign.center,
                  
                //   style: TextStyle(
                //     fontSize: 24,
                //     fontFamily: 'Voces',
                //   ),
                // ),

                // )
                
              ),

              //Dates
              Positioned(
                top: MediaQuery.of(context).size.height * 0.51,
                child: Row(
                  children: <Widget>[
                    Text(widget.image_startdate.toString()),
                    Text(' to '),
                    Text(widget.image_enddate.toString())
                  ]
                ),
                
                // Text(
                //   //'15th Jan,2022 & 16th Jan, 2022',
                   
                //       widget.image_startdate,
                    
                //   textAlign: TextAlign.center,
                //   style: TextStyle(
                //     color: Color(0xFF8297A8),
                //     fontSize: 18,
                //   ),
                // ),
              ),

              //Container for Divider
              Positioned(
                top: MediaQuery.of(context).size.height * 0.54,
                width: MediaQuery.of(context).size.width * 0.80,
                child: Container(
                  height: 10,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    // borderRadius: BorderRadius.all(Radius.circular(3.0)),
                    border: Border(
                      bottom: BorderSide(
                        color: Color(0xFF00467F),
                        width: 7,
                      ),
                    ),
                  ),
                ),
              ),

              //Workshop or event description
              Positioned(
                top: MediaQuery.of(context).size.height * 0.6,
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.95,
                  margin: EdgeInsets.all(10),
                  child: Text(
                    widget.image_description.toString(),
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: 'Voces',
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
