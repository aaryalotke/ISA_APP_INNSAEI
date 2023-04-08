import "package:flutter/material.dart";
import './models/format_developers.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:http/http.dart';
import "package:intl/intl.dart";
import "main_developers.dart";
import 'package:url_launcher/url_launcher_string.dart';

class pageone_dev extends StatefulWidget {
  final List<Format> people;
  pageone_dev(this.people); //Image List for hardware has been recieved

  @override
  State<pageone_dev> createState() => _pageone_devState();
}

class _pageone_devState extends State<pageone_dev> {
  launchurlmail(String url) async {
    if (await canLaunchUrlString(url)) {
      await launchUrlString(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  launchurlinsta(String url) async {
    if (await canLaunchUrlString(url)) {
      await launchUrlString(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  launchurlinlink(String url) async {
    if (await canLaunchUrlString(url)) {
      await launchUrlString(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context)
            .size
            .width, //Necessary to prevent Renderbox error
        margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
        child: ListView.builder(
          shrinkWrap: true,
          physics: ClampingScrollPhysics(),
          itemBuilder: (ctx, index) {
            if (index % 2 == 0) {
              //Itembuilder helps us loop through the list
              //if (widget.people[index].id == 1 ||widget.people[index].id == 3 || widget.people[index].id == 5 || widget.people[index].id == 7 || widget.people[index].id == 9 || widget.people[index].id == 11 ||widget.people[index].id == 13) {

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
                  //trail1

                  // child: widget.people[index].id == 1  ?

                  //  Container(height: 0,width: 20,color: Colors.red,) : Container(child: Column(children:<Widget>[
                  //   const Padding(padding: EdgeInsets.fromLTRB(50, 0, 50, 0)),
                  //   Image.network(
                  //     widget.people[index].image!,
                  //   ), //galleryImages being called through widget. and then accessed like arrays
                  //   Container(
                  //     padding: const EdgeInsets.all(15),
                  //     child: Text(
                  //       widget.people[index].name!,
                  //       style: const TextStyle(
                  //         fontSize: 23,
                  //         color: Colors.black,
                  //         fontFamily: 'Voces',
                  //       ),
                  //       textAlign: TextAlign.center,
                  //     ),
                  //   ),
                  // ],),),

                  child: Stack(
                    alignment: Alignment.centerLeft,
                    children: <Widget>[
                      //const Padding(padding: EdgeInsets.fromLTRB(50, 100, 50, 0)),

                      //name
                      Positioned(
                        top: MediaQuery.of(context).size.height * 0.1,
                        child: Container(
                          height: 40,
                          width: 250,
                          margin: const EdgeInsets.fromLTRB(90, 0, 10, 0),
                          padding: EdgeInsets.fromLTRB(57, 10, 10, 0),
                          child: Text(
                            widget.people[index].name!,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontFamily: 'Voces',
                                fontSize: 17,
                                color: Colors.white),
                          ),
                          decoration: ShapeDecoration(
                            color: const Color(0xFFFE735D).withOpacity(0.8),
                            //color: Color(0xFFFE735D),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(7.0),
                            ),
                          ),
                        ),
                      ),

                      //post
                      Positioned(
                        child: Container(
                          height: 110,
                          width: 450,
                          margin: const EdgeInsets.fromLTRB(48, 130, 0, 0),
                          padding: EdgeInsets.fromLTRB(110, 10, 0, 5),
                          decoration: ShapeDecoration(
                            color: const Color(0xFFFE735D).withOpacity(0.8),
                            //color: Color(0xFFFE735D),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(7.0),
                            ),
                          ),
                          child: Column(children: <Widget>[
                            Text(
                              widget.people[index].post!,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontFamily: 'Voces',
                                  fontSize: 15,
                                  color: Colors.white),
                            ),
                            Container(
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: <Widget>[
                                  Container(
                                    margin: EdgeInsets.only(
                                        top: 14.0,
                                        left: 0.0,
                                        right: 0.0,
                                        bottom: 5.0),
                                    padding: EdgeInsets.all(.0),
                                    child: Material(
                                      color: Colors.transparent,
                                      child: InkWell(
                                        splashColor: Colors.black,
                                        highlightColor: Colors.black26,
                                        child: IconButton(
                                          onPressed: () {
                                            launchurlmail(
                                                widget.people[index].email!);
                                          },
                                          icon: Icon(
                                            Icons.mail_rounded,
                                            color: Colors.black,
                                            size: 37,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(
                                        top: 12.0,
                                        left: 0.0,
                                        right: 0.0,
                                        bottom: .0),
                                    padding: EdgeInsets.all(0.0),
                                    child: Material(
                                      color: Colors.transparent,
                                      child: InkWell(
                                        splashColor: Colors.black,
                                        highlightColor: Colors.black26,
                                        child: IconButton(
                                          onPressed: () {
                                            launchurlinsta(
                                                widget.people[index].insta_id!);
                                          },
                                          icon: Icon(
                                            FontAwesomeIcons.instagram,
                                            color: Colors.black,
                                            size: 33,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(
                                        top: 12.0,
                                        left: 0.0,
                                        right: 0.0,
                                        bottom: 0.0),
                                    padding: EdgeInsets.all(0.0),
                                    child: Material(
                                      color: Colors.transparent,
                                      child: InkWell(
                                        splashColor: Colors.black,
                                        highlightColor: Colors.black,
                                        child: IconButton(
                                          onPressed: () {
                                            launchurlinlink(widget
                                                .people[index].linked_in!);
                                          },
                                          icon: Icon(
                                            FontAwesomeIcons.linkedin,
                                            color: Colors.black,
                                            size: 33,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ]),
                        ),
                      ),

                      // //socials
                      // Positioned(top: MediaQuery.of(context).size.height * 0.1,
                      //   child: Container(
                      //     child: Text('Social',textAlign: TextAlign.center, style: TextStyle(fontFamily: 'Ubuntu',fontSize: 17,color: Colors.white),),
                      //     margin: EdgeInsets.only(top: 90.0, left: 115.0, right: 30.0, bottom: 20.0),
                      //     padding: EdgeInsets.fromLTRB(46, 17, 20, 0),
                      //   ),
                      // ),

                      //photo
                      // Positioned(
                      //   child: Container(
                      //     decoration: BoxDecoration(
                      //       image: DecorationImage(
                      //         fit: BoxFit.cover,
                      //         alignment: FractionalOffset.topCenter,
                      //         image: new AssetImage( widget.people[index].image!),
                      //       ),
                      //         shape: BoxShape.circle,
                      //         boxShadow: [
                      //           BoxShadow(color:  Color(0xFFFE735D),spreadRadius: 10.0),
                      //         ]
                      //     ),
                      //     margin: const EdgeInsets.fromLTRB(0, 74, 0, 0),
                      //     padding: EdgeInsets.fromLTRB(0, 5, 0, 5),
                      //     height: 150,
                      //     width: 150,
                      //   ),
                      // ),

                      Positioned(
                        child: Container(
                          decoration: BoxDecoration(
                              image: new DecorationImage(
                                image: NetworkImage(
                                  widget.people[index].image!,
                                ),
                                alignment: FractionalOffset.topCenter,
                                fit: BoxFit.cover,
                              ),
                              shape: BoxShape.circle,
                              boxShadow: [
                                BoxShadow(
                                    color: Color(0xFFFE735D),
                                    spreadRadius: 10.0),
                              ]),
                          margin: const EdgeInsets.fromLTRB(0, 74, 0, 0),
                          padding: EdgeInsets.fromLTRB(0, 5, 0, 5),
                          height: 150,
                          width: 150,
                        ),
                      ),
                    ],
                  ),

                  // child: Image.network(widget.TE[index].photo!,
                  //              alignment: FractionalOffset.topCenter,
                  //             fit: BoxFit.cover,)
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
                      //const Padding(padding: EdgeInsets.fromLTRB(50, 0, 50, 0)),
                      //name
                      Positioned(
                        top: MediaQuery.of(context).size.height * 0.1,
                        child: Container(
                          height: 40,
                          width: 250,
                          margin: const EdgeInsets.fromLTRB(0, 0, 60, 0),
                          padding: EdgeInsets.fromLTRB(0, 10, 48, 0),
                          child: Text(
                            widget.people[index].name!,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontFamily: 'Voces',
                                fontSize: 17,
                                color: Colors.white),
                          ),
                          decoration: ShapeDecoration(
                            color: const Color(0xFF00467F).withOpacity(0.8),
                            //color: Color(0xFF00467F),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(7.0),
                            ),
                          ),
                        ),
                      ),

                      //post
                      Positioned(
                        child: Container(
                          height: 110,
                          width: 400,
                          margin: const EdgeInsets.fromLTRB(0, 130, 50, 0),
                          padding: EdgeInsets.fromLTRB(0, 10, 105, 5),
                          decoration: ShapeDecoration(
                            color: const Color(0xFF00467F).withOpacity(0.8),
                            //color: Color(0xFF00467F),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(7.0),
                            ),
                          ),
                          child: Column(
                            children: <Widget>[
                              Text(
                                widget.people[index].post!,
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontFamily: 'Voces',
                                    fontSize: 15,
                                    color: Colors.white),
                              ),
                              Container(
                                width: 900,
                                //height:25,
                                margin: EdgeInsets.only(
                                    top: 12.0,
                                    left: .0,
                                    right: 2.0,
                                    bottom: 0.0),
                                padding: EdgeInsets.all(1.0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: <Widget>[
                                    Container(
                                      //padding: EdgeInsets.all(2.0),
                                      //margin: EdgeInsets.only(top: 12.0, left: 0.0, right: 0.0, bottom: 0.0),
                                      child: Material(
                                        color: Colors.transparent,
                                        child: InkWell(
                                          splashColor: Colors.black,
                                          highlightColor: Colors.black,
                                          child: InkWell(
                                            splashColor: Colors.black26,
                                            highlightColor: Colors.white,
                                            child: IconButton(
                                              onPressed: () {
                                                launchurlinlink(widget
                                                    .people[index].linked_in!);
                                              },
                                              icon: Icon(
                                                FontAwesomeIcons.linkedin,
                                                color: Colors.black,
                                                size: 33,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      // margin: EdgeInsets.only(top: 7.0, left: .0, right: 0.0, bottom: 0.0),
                                      // padding: EdgeInsets.all(5.0),
                                      child: Material(
                                        color: Colors.transparent,
                                        child: InkWell(
                                          splashColor: Colors.black,
                                          highlightColor: Colors.black,
                                          child: IconButton(
                                            onPressed: () {
                                              launchurlinsta(widget
                                                  .people[index].insta_id!);
                                            },
                                            icon: Icon(
                                              FontAwesomeIcons.instagram,
                                              color: Colors.black,
                                              size: 33,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(
                                          top: .0,
                                          left: 0.0,
                                          right: 10.0,
                                          bottom: 2.0),
                                      // padding: EdgeInsets.all(5.0),
                                      child: Material(
                                        color: Colors.transparent,
                                        child: InkWell(
                                          splashColor: Colors.black,
                                          highlightColor: Colors.black,
                                          child: IconButton(
                                            onPressed: () {
                                              launchurlmail(
                                                  widget.people[index].email!);
                                            },
                                            icon: Icon(
                                              Icons.mail_rounded,
                                              color: Colors.black,
                                              size: 37,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),

                      // //socials
                      // Positioned(top: MediaQuery.of(context).size.height * 0.1,
                      //   child: Container(
                      //     child: Text('Social',textAlign: TextAlign.center, style: TextStyle(fontFamily: 'Ubuntu',fontSize: 17,color: Colors.white),),
                      //     margin: EdgeInsets.only(top: 90.0, left: 130.0, right: 50.0, bottom: 20.0),
                      //     padding: EdgeInsets.fromLTRB(0, 17, 90, 0),
                      //   ),
                      // ),

                      //photo
                      Positioned(
                        //top: MediaQuery.of(context).size.height * 0.1,
                        child: Container(
                          margin: const EdgeInsets.fromLTRB(200, 70, 0, 0),
                          padding: EdgeInsets.fromLTRB(0, 5, 0, 5),
                          height: 150,
                          width: 150,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                fit: BoxFit.cover,
                                alignment: FractionalOffset.topCenter,
                                image:
                                    NetworkImage(widget.people[index].image!),
                              ),
                              shape: BoxShape.circle,
                              boxShadow: [
                                BoxShadow(
                                    color: Color(0xFF00467F),
                                    spreadRadius: 10.0),
                              ]),
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
