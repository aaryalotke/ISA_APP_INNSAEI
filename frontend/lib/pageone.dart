// ignore: file_names
// ignore_for_file: file_names

import "package:flutter/material.dart";
import './models/format.dart';
import "./models/gallery.dart";
import "gallery_main.dart";
import "package:intl/intl.dart";
import "./models/gallery_software.dart";
import "home.dart";
import "galleryClick.dart";

class pageone extends StatefulWidget {
  final List<Format> people;
  pageone(this.people); //Image List for hardware has been recieved

  // final List<gallery_software> gallery_software;
  // galleryFirst(this.gallery_software);//Image List for software has been recieved
  @override
  State<pageone> createState() => _pageoneState();
}

class _pageoneState extends State<pageone> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
        height: size.height * 0.85, //Necessary to prevent Renderbox error
        margin: EdgeInsets.fromLTRB(0, 20, 0, 20),
        child: ListView.builder(
          itemBuilder: (ctx, index) {
            //Itembuilder helps us loop through the list
            if (index % 2 == 0) {
              //Main Image cards
              return Card(
                elevation: 0,
                color: Colors.transparent,
                margin: EdgeInsets.all(10),
                child: InkWell(
                  //Wrap the code in inkwell to make it clickable
                  onTap: () {
                    print("tapped");
                  },

                  child: Stack(
                    alignment: Alignment.center,
                    children: <Widget>[
                      const Padding(padding: EdgeInsets.fromLTRB(50, 0, 50, 0)),
                      //name
                      Positioned(
                        child: Container(
                          width: 300,
                          decoration: BoxDecoration(
                              border: Border.all(), color: Colors.cyan),
                          margin: const EdgeInsets.fromLTRB(40, 0, 0, 0),
                          padding: EdgeInsets.fromLTRB(0, 5, 10, 5),
                          child: Text(
                            widget.people[index].name,
                            style: const TextStyle(
                              fontSize: 18,
                              color: Colors.black,
                              fontFamily: 'Voces',
                            ),
                            textAlign: TextAlign.right,
                          ),
                        ),
                      ),

                      //post

                      Positioned(
                        child: Container(
                          width: 300,
                          decoration: BoxDecoration(
                              border: Border.all(), color: Colors.cyan),
                          margin: const EdgeInsets.fromLTRB(40, 80, 0, 0),
                          padding: EdgeInsets.fromLTRB(0, 5, 0, 5),
                          child: Column(
                            children: <Widget>[
                              Text(
                                widget.people[index].post,
                                style: const TextStyle(
                                  fontSize: 18,
                                  color: Colors.black,
                                  fontFamily: 'Voces',
                                ),
                                textAlign: TextAlign.right,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: <Widget>[
                                  Text('Soc '),
                                  Text('Soc '),
                                  Text('Soc '),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              );
            } else {
              return Card(
                elevation: 0,
                color: Colors.transparent,
                margin: EdgeInsets.all(10),
                child: InkWell(
                  //Wrap the code in inkwell to make it clickable
                  onTap: () {
                    print("tapped");
                  },

                  child: Stack(
                    alignment: Alignment.center,
                    children: <Widget>[
                      const Padding(padding: EdgeInsets.fromLTRB(50, 0, 50, 0)),
                      Positioned(
                        child: Container(
                          width: 300,
                          decoration: BoxDecoration(
                            border: Border.all(),
                            color: Colors.amber,
                          ),
                          margin: const EdgeInsets.fromLTRB(0, 0, 40, 0),
                          padding: EdgeInsets.fromLTRB(15, 5, 15, 5),
                          child: Text(
                            widget.people[index].name,
                            style: const TextStyle(
                              fontSize: 18,
                              color: Colors.black,
                              fontFamily: 'Voces',
                            ),
                            textAlign: TextAlign.left,
                          ),
                        ),
                      ),
                      Positioned(
                        child: Container(
                          width: 300,
                          decoration: BoxDecoration(
                            border: Border.all(),
                            color: Colors.amber,
                          ),
                          margin: const EdgeInsets.fromLTRB(0, 80, 40, 0),
                          padding: EdgeInsets.fromLTRB(15, 5, 0, 5),
                          child: Column(
                            children: <Widget>[
                              Text(
                                widget.people[index].post,
                                style: const TextStyle(
                                  fontSize: 18,
                                  color: Colors.black,
                                  fontFamily: 'Voces',
                                ),
                                textAlign: TextAlign.center,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: <Widget>[
                                  Text('Soc '),
                                  Text('Soc '),
                                  Text('Soc '),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              );
            }
          },
          itemCount: widget.people.length,
        ));
  }
}
