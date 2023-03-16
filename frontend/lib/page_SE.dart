import "package:flutter/material.dart";
//import 'page_BE.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';
//import 'package:http/http.dart';
//import 'main.dart';
import 'package:flip_card/flip_card.dart';
import 'main_our_team.dart';
import './models/format_team.dart';
import 'package:intl/intl.dart';
import 'package:url_launcher/url_launcher_string.dart';

class page_SE extends StatefulWidget {
  final List<Council> SE;
  page_SE(this.SE);
  //   final List<Format_team_BE> BE;
  //  page_BE(this.BE);

  @override
  State<page_SE> createState() => _page_SEState();
}

class _page_SEState extends State<page_SE> {
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
        //  height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        //padding: EdgeInsets.only(bottom: 300), //Necessary to prevent Renderbox error
        margin: EdgeInsets.fromLTRB(0, 0, 0, 10),
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
                  margin: EdgeInsets.all(10),
                  child: Stack(alignment: Alignment.center, children: <Widget>[
                    FlipCard(
                      direction: FlipDirection.HORIZONTAL,
                      front:
                          Stack(alignment: Alignment.center, children: <Widget>[
                        //blue container
                        Positioned(
                          child: Container(
                            margin: const EdgeInsets.fromLTRB(20, 50, 10, 0),
                            padding: EdgeInsets.fromLTRB(57, 10, 10, 0),
                            height: 300,
                            width: 300,
                            decoration: ShapeDecoration(
                              color: Color(0xFF00467f),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15.0),
                              ),
                            ),
                          ),
                        ),

                        //white container
                        Positioned(
                          child: Container(
                            height: 290,
                            width: 290,
                            margin: const EdgeInsets.fromLTRB(20, 40, 0, 0),
                            padding: EdgeInsets.fromLTRB(57, 10, 10, 0),
                            decoration: ShapeDecoration(
                              color: Colors.white,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15.0),
                              ),
                            ),
                          ),
                        ),

                        //photo!
                        Positioned(
                          child: Container(
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(15),
                              child: Image.network(
                                widget.SE[index].photo!,
                                alignment: FractionalOffset.topCenter,
                                fit: BoxFit.cover,
                                //image:Image.network( widget.TE[index].photo!),
                                //fit: BoxFit.cover,
                                //alignment: FractionalOffset.topCenter,
                              ),
                            ),
                            margin: const EdgeInsets.fromLTRB(40, 8, 0, 0),
                            padding: EdgeInsets.fromLTRB(0, 5, 0, 5),
                            height: 270,
                            width: 270,
                          ),
                        ),

                        //text
                        Positioned(
                          child: Container(
                            margin: const EdgeInsets.fromLTRB(20, 290, 20, 0),
                            padding: EdgeInsets.fromLTRB(30, 10, 0, 0),
                            child: Text(
                              widget.SE[index].name!,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontFamily: 'Voces',
                                  fontSize: 20,
                                  color: Colors.black),
                            ),
                          ),
                        ),

                        // small circle
                        Positioned(
                          child: Container(
                            height: 70,
                            width: 70,
                            margin: const EdgeInsets.fromLTRB(260, 0, 0, 210),
                            padding: EdgeInsets.fromLTRB(57, 10, 10, 0),
                            decoration: new BoxDecoration(
                              color: Color(0xFF00467f),
                              shape: BoxShape.circle,
                            ),
                          ),
                        ),

                        //fast forward
                        Positioned(
                          child: Container(
                            height: 70,
                            width: 70,
                            margin: const EdgeInsets.fromLTRB(163, 0, 0, 225),
                            padding: EdgeInsets.fromLTRB(57, 10, 10, 0),
                            child: IconButton(
                              onPressed: () {},
                              icon: Icon(
                                FontAwesomeIcons.chevronRight,
                                color: Colors.white,
                                size: 40,
                              ),
                            ),
                          ),
                        ),

                        Positioned(
                          child: Container(
                            height: 70,
                            width: 70,
                            margin: const EdgeInsets.fromLTRB(200, 0, 0, 225),
                            padding: EdgeInsets.fromLTRB(57, 10, 10, 0),
                            child: IconButton(
                              onPressed: () {},
                              icon: Icon(
                                FontAwesomeIcons.chevronRight,
                                color: Colors.white,
                                size: 40,
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
                              margin: const EdgeInsets.fromLTRB(20, 50, 10, 0),
                              padding: EdgeInsets.fromLTRB(57, 10, 10, 0),
                              height: 300,
                              width: 300,
                              decoration: ShapeDecoration(
                                color: const Color(0xFF00467F).withOpacity(0.9),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15.0),
                                ),
                              ),
                            ),
                          ),

                          //small circle
                          Positioned(
                            child: Container(
                              height: 70,
                              width: 70,
                              margin: const EdgeInsets.fromLTRB(0, 0, 240, 210),
                              padding: EdgeInsets.fromLTRB(57, 10, 10, 0),
                              decoration: new BoxDecoration(
                                color: Color(0xFF00467F),
                                shape: BoxShape.circle,
                              ),
                            ),
                          ),

                          //fast forward
                          Positioned(
                            child: Container(
                              height: 70,
                              width: 70,
                              margin: const EdgeInsets.fromLTRB(0, 0, 188, 225),
                              padding: EdgeInsets.fromLTRB(0, 10, 100, 0),
                              child: IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  FontAwesomeIcons.chevronRight,
                                  color: Colors.white,
                                  size: 40,
                                ),
                              ),
                            ),
                          ),

                          Positioned(
                            child: Container(
                              height: 70,
                              width: 70,
                              margin: const EdgeInsets.fromLTRB(0, 0, 225, 225),
                              padding: EdgeInsets.fromLTRB(0, 10, 100, 0),
                              child: IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  FontAwesomeIcons.chevronRight,
                                  color: Colors.white,
                                  size: 40,
                                ),
                              ),
                            ),
                          ),

                          //post
                          Container(
                            height: 200,
                            width: 300,
                            margin: EdgeInsets.only(
                                top: 65.0, left: 20.0, right: 0.0, bottom: 0.0),
                            // padding: EdgeInsets.fromLTRB(57, 10, 10, 0),
                            child: Text(
                              widget.SE[index].post!,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontFamily: 'Voces',
                                  fontSize: 32,
                                  color: Colors.white),
                            ),
                          ),

                          //social text
                          Container(
                            height: 70,
                            width: 70,
                            margin: EdgeInsets.only(
                                top: 120.0,
                                left: 20.0,
                                right: 0.0,
                                bottom: 0.0),
                            // padding: EdgeInsets.fromLTRB(57, 10, 10, 0),
                            child: Text(
                              "Social",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontFamily: 'Voces',
                                  fontSize: 25,
                                  color: Colors.black),
                            ),
                          ),

                          //icons
                          Container(
                            //margin: EdgeInsets.only(top: 200.0, left: 40.0, right: 0.0, bottom: 5.0),

                            child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: <Widget>[
                                  Container(
                                    margin: EdgeInsets.only(
                                        top: 205.0,
                                        left: 40.0,
                                        right: 0.0,
                                        bottom: 5.0),
                                    //padding: EdgeInsets.all(5.0),

                                    // splashColor: Colors.black,
                                    // highlightColor: Colors.black26,
                                    child: IconButton(
                                      onPressed: () {
                                        launchurlmail(widget.SE[index].email!);
                                      },
                                      icon: Icon(
                                        Icons.mail_rounded,
                                        color: Colors.black,
                                        size: 60,
                                      ),
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(
                                        top: 200.0,
                                        left: 0.0,
                                        right: 0.0,
                                        bottom: .0),
                                    //padding: EdgeInsets.all(5.0),

                                    //color: Colors.transparent,

                                    //  splashColor: Colors.black,
                                    // highlightColor: Colors.black26,
                                    child: IconButton(
                                      onPressed: () {
                                        launchurlinsta(
                                            widget.SE[index].insta_id!);
                                      },
                                      icon: Icon(
                                        FontAwesomeIcons.instagram,
                                        color: Colors.black,
                                        size: 54,
                                      ),
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(
                                        top: 200.0,
                                        left: 0.0,
                                        right: 40.0,
                                        bottom: 0.0),
                                    //padding: EdgeInsets.all(5.0),

                                    //color: Colors.transparent,

                                    //  splashColor: Colors.black,
                                    // highlightColor: Colors.black,
                                    child: IconButton(
                                      onPressed: () {
                                        launchurlinlink(
                                            widget.SE[index].linked_in!);
                                      },
                                      icon: Icon(
                                        FontAwesomeIcons.linkedin,
                                        color: Colors.black,
                                        size: 54,
                                      ),
                                    ),
                                  ),
                                ]),
                          ),
                        ],
                      ),
                    )
                  ]));
            } else {
              return Card(
                elevation: 0,
                color: Colors.transparent,
                margin: EdgeInsets.all(10),
                child: Stack(
                  alignment: Alignment.center,
                  children: <Widget>[
                    FlipCard(
                      front:
                          Stack(alignment: Alignment.center, children: <Widget>[
                        //orange container
                        Positioned(
                          child: Container(
                            margin: const EdgeInsets.fromLTRB(20, 50, 10, 0),
                            padding: EdgeInsets.fromLTRB(57, 10, 10, 0),
                            height: 300,
                            width: 300,
                            decoration: ShapeDecoration(
                              color: Color(0xFFFE735D),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15.0),
                              ),
                            ),
                          ),
                        ),

                        //white container
                        Positioned(
                          child: Container(
                            height: 290,
                            width: 290,
                            margin: const EdgeInsets.fromLTRB(0, 40, 0, 0),
                            padding: EdgeInsets.fromLTRB(57, 10, 10, 0),
                            decoration: ShapeDecoration(
                              color: Colors.white,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15.0),
                              ),
                            ),
                          ),
                        ),

                        //photo!
                        Positioned(
                          child: Container(
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(15),
                              child: Image.network(
                                widget.SE[index].photo!,
                                alignment: FractionalOffset.topCenter,
                                fit: BoxFit.cover,
                                //image:Image.network( widget.TE[index].photo!),
                                //fit: BoxFit.cover,
                                //alignment: FractionalOffset.topCenter,
                              ),
                            ),
                            margin: const EdgeInsets.fromLTRB(0, 8, 18, 0),
                            padding: EdgeInsets.fromLTRB(0, 5, 0, 5),
                            height: 270,
                            width: 270,
                          ),
                        ),

                        // //text
                        Positioned(
                          child: Container(
                            margin: const EdgeInsets.fromLTRB(0, 290, 10, 0),
                            padding: EdgeInsets.fromLTRB(24, 10, 10, 0),
                            child: Text(
                              widget.SE[index].name!,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontFamily: 'Voces',
                                  fontSize: 20,
                                  color: Colors.black),
                            ),
                          ),
                        ),

                        //small circle
                        Positioned(
                          child: Container(
                            height: 70,
                            width: 70,
                            margin: const EdgeInsets.fromLTRB(0, 0, 240, 210),
                            padding: EdgeInsets.fromLTRB(57, 10, 10, 0),
                            decoration: new BoxDecoration(
                              color: Color(0xFFFE735D),
                              shape: BoxShape.circle,
                            ),
                          ),
                        ),

                        //fast forward
                        Positioned(
                          child: Container(
                            height: 70,
                            width: 70,
                            margin: const EdgeInsets.fromLTRB(0, 0, 188, 225),
                            padding: EdgeInsets.fromLTRB(0, 10, 100, 0),
                            child: IconButton(
                              onPressed: () {},
                              icon: Icon(
                                FontAwesomeIcons.chevronRight,
                                color: Colors.black,
                                size: 40,
                              ),
                            ),
                          ),
                        ),

                        Positioned(
                          child: Container(
                            height: 70,
                            width: 70,
                            margin: const EdgeInsets.fromLTRB(0, 0, 225, 225),
                            padding: EdgeInsets.fromLTRB(0, 10, 100, 0),
                            child: IconButton(
                              onPressed: () {},
                              icon: Icon(
                                FontAwesomeIcons.chevronRight,
                                color: Colors.black,
                                size: 40,
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
                            margin: const EdgeInsets.fromLTRB(20, 50, 10, 0),
                            padding: EdgeInsets.fromLTRB(57, 10, 10, 0),
                            height: 300,
                            width: 300,
                            decoration: ShapeDecoration(
                              color: Color(0xFFFE735D).withOpacity(0.9),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15.0),
                              ),
                            ),
                          ),
                        ),

                        // small circle
                        Positioned(
                          child: Container(
                            height: 70,
                            width: 70,
                            margin: const EdgeInsets.fromLTRB(260, 0, 0, 210),
                            padding: EdgeInsets.fromLTRB(57, 10, 10, 0),
                            decoration: new BoxDecoration(
                              color: Color(0xFFFE735D),
                              shape: BoxShape.circle,
                            ),
                          ),
                        ),

                        //fast forward
                        Positioned(
                          child: Container(
                            height: 70,
                            width: 70,
                            margin: const EdgeInsets.fromLTRB(163, 0, 0, 225),
                            padding: EdgeInsets.fromLTRB(57, 10, 10, 0),
                            child: IconButton(
                              onPressed: () {},
                              icon: Icon(
                                FontAwesomeIcons.chevronRight,
                                color: Colors.black,
                                size: 40,
                              ),
                            ),
                          ),
                        ),

                        Positioned(
                          child: Container(
                            height: 70,
                            width: 70,
                            margin: const EdgeInsets.fromLTRB(200, 0, 0, 225),
                            padding: EdgeInsets.fromLTRB(57, 10, 10, 0),
                            child: IconButton(
                              onPressed: () {},
                              icon: Icon(
                                FontAwesomeIcons.chevronRight,
                                color: Colors.black,
                                size: 40,
                              ),
                            ),
                          ),
                        ),

                        //post
                        Container(
                          height: 200,
                          width: 300,
                          margin: EdgeInsets.only(
                              top: 65.0, left: 20.0, right: 0.0, bottom: 0.0),
                          // padding: EdgeInsets.fromLTRB(57, 10, 10, 0),
                          child: Text(
                            widget.SE[index].post!,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontFamily: 'Voces',
                                fontSize: 32,
                                color: Colors.white),
                          ),
                        ),

                        //social text
                        Container(
                          height: 70,
                          width: 70,
                          margin: EdgeInsets.only(
                              top: 120.0, left: 20.0, right: 0.0, bottom: 0.0),
                          // padding: EdgeInsets.fromLTRB(57, 10, 10, 0),
                          child: Text(
                            "Social",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontFamily: 'Voces',
                                fontSize: 25,
                                color: Colors.black),
                          ),
                        ),

                        //icons
                        Container(
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: <Widget>[
                                Container(
                                  margin: EdgeInsets.only(
                                      top: 205.0,
                                      left: 40.0,
                                      right: 0.0,
                                      bottom: 5.0),
                                  //padding: EdgeInsets.all(.0),
                                  child: Material(
                                    color: Colors.transparent,
                                    child: InkWell(
                                      splashColor: Colors.black,
                                      highlightColor: Colors.black26,
                                      child: IconButton(
                                        onPressed: () {
                                          launchurlmail(
                                              widget.SE[index].email!);
                                        },
                                        icon: Icon(
                                          Icons.mail_rounded,
                                          color: Colors.black,
                                          size: 60,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(
                                      top: 200.0,
                                      left: 0.0,
                                      right: 0.0,
                                      bottom: .0),
                                  //padding: EdgeInsets.all(0.0),
                                  child: Material(
                                    color: Colors.transparent,
                                    child: InkWell(
                                      splashColor: Colors.black,
                                      highlightColor: Colors.black26,
                                      child: IconButton(
                                        onPressed: () {
                                          launchurlinsta(
                                              widget.SE[index].insta_id!);
                                        },
                                        icon: Icon(
                                          FontAwesomeIcons.instagram,
                                          color: Colors.black,
                                          size: 54,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(
                                      top: 200.0,
                                      left: 0.0,
                                      right: 40.0,
                                      bottom: 0.0),
                                  // padding: EdgeInsets.all(0.0),
                                  child: Material(
                                    color: Colors.transparent,
                                    child: InkWell(
                                      splashColor: Colors.black,
                                      highlightColor: Colors.black,
                                      child: IconButton(
                                        onPressed: () {
                                          launchurlinlink(
                                              widget.SE[index].linked_in!);
                                        },
                                        icon: Icon(
                                          FontAwesomeIcons.linkedin,
                                          color: Colors.black,
                                          size: 54,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ]),
                        ),
                      ]),
                    )
                  ],
                ),
              );
            }
          },
          itemCount: widget.SE.length,
        ));
  }
}
