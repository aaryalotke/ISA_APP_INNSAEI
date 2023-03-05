import 'certi_main.dart';
import "package:flutter/material.dart";
import 'models/format_certi.dart';

import 'package:url_launcher/url_launcher_string.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';
//import 'package:http/http.dart';

//import 'package:flip_card/flip_card.dart';


class page_three extends StatefulWidget {
  final List<format_certi> certi;
     page_three(this.certi);

  @override
  State<page_three> createState() => _page_threeState();
}

class _page_threeState extends State<page_three> {
  launchurllink(String url) async {
    if (await canLaunchUrlString(url)) {
      await launchUrlString(url);
    } else {
      throw 'Could not launch $url';
    }
  }
  @override
  Widget build(BuildContext context) {
    //Size size = MediaQuery.of(context).size;
    return Container(
       // height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width, //Necessary to prevent Renderbox error
        //margin: EdgeInsets.fromLTRB(0, 0, 0, 150),
        child: ListView.builder(
          shrinkWrap: true,
           physics: ClampingScrollPhysics(),

          itemBuilder: (ctx, index) {//Itembuilder helps us loop through the list
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
                     

                      //photo
                      Positioned(
                        child: Container(
        color: const Color(0xFFFE735D),
          height: 180,
          width: 350,
        child: Image(
          image: AssetImage(widget.certi[index].photo),
          height: MediaQuery.of(context).size.height * 0.3,
                     // fit: BoxFit.cover,
          ),
        
      ),
                      ),


                      //icon
                      Positioned(
                        child: Container(
                                      margin: EdgeInsets.only(top: 5.0, left: 290.0, right: 0.0, bottom: 140.0),
                                      //padding: EdgeInsets.all(.0),
                                      child: Material(
                                        color: Colors.transparent,
                                        child: InkWell(
                                        splashColor: Colors.black,
                                        highlightColor: Colors.black26,
                                        child: IconButton(
                                          onPressed: (){
                                            launchurllink(widget.certi[index].link);
                                            },
                                          icon: Icon(
                                            Icons.download,
                                            color: Colors.black,
                                            size: 30,
                                          ),
                                        ),
                                      ),
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
                      
                      //photo
                      Positioned(
                        child: Container(
        color: const Color(0xFF00467F),
          height: 180,
          width: 350,
        child: Image(
          image: AssetImage(widget.certi[index].photo),
          height: MediaQuery.of(context).size.height * 0.3,
                     // fit: BoxFit.cover,
          ),
        
      ),
                      ),

                      //icon
                      Positioned(
                        child: Container(
                                      margin: EdgeInsets.only(top: 5.0, left: 290.0, right: 0.0, bottom: 140.0),
                                      //padding: EdgeInsets.all(.0),
                                      child: Material(
                                        color: Colors.transparent,
                                        child: InkWell(
                                        splashColor: Colors.black,
                                        highlightColor: Colors.black26,
                                        child: IconButton(
                                          onPressed: (){
                                            launchurllink(widget.certi[index].link);
                                            },
                                          icon: Icon(
                                            Icons.download,
                                            color: Colors.white,
                                            size: 30,
                                          ),
                                        ),
                                      ),
                                    ),
                                    ),
                      ),

                    ],
                  ),
                ),
              );
            }
          },
          itemCount: widget.certi.length,
        )
        );
  }
}