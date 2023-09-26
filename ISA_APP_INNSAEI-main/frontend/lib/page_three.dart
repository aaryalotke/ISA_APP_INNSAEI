import "package:flutter/material.dart";
import 'models/format_certi.dart';

import 'package:url_launcher/url_launcher_string.dart';
//import 'package:http/http.dart';

//import 'package:flip_card/flip_card.dart';


class page_three extends StatefulWidget {
  final List<Format> certi;
     const page_three(this.certi, {Key? key}) : super(key: key);

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
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height * 0.85, //Necessary to prevent Renderbox error
        margin: const EdgeInsets.fromLTRB(0, 20, 0, 20),
        child: ListView.builder(
          // shrinkWrap: true,
          //  physics: ClampingScrollPhysics(),

          itemBuilder: (ctx, index) {//Itembuilder helps us loop through the list
           
            //Main Image cards
              return Card(
                elevation: 0,
                color: Colors.transparent,
                margin: const EdgeInsets.all(10),
                child: InkWell(
                  //Wrap the code in inkwell to make it clickable
                  onTap: () {
                    print("tapped");
                  },

                  child: Stack(
                    alignment: Alignment.center,
                    children: <Widget>[
                     

                      //photo
      //                 Positioned(
      //                   child: Container(
      //   // color: const Color(0xFFFE735D),
      //     height: 300,
      //     width: 350,
      //   child: Image.network(
      //    widget.certi[index].certificates!,
      //     // height: MediaQuery.of(context).size.height * 0.3,
      //                // fit: BoxFit.cover,
      //     ),
        
      // ),
      //                 ),

      Positioned(
                        //top: MediaQuery.of(context).size.height * 0.1,
                        child: Container(
                          // margin: const EdgeInsets.fromLTRB(200, 70, 0, 0),
                          padding: const EdgeInsets.fromLTRB(0, 5, 0, 5),
                          height: 300,
                          width: 350,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                // fit: BoxFit.cover,
                                // alignment: FractionalOffset.topCenter,
                                image:
                                    NetworkImage(widget.certi[index].certificates!,),
                              ),
                              // shape: BoxShape.circle,
                              boxShadow: const [
                                BoxShadow(
                                    color: Color.fromARGB(255, 229, 223, 223),
                                    //  blurRadius: 10,
                                     offset: Offset(0, 6),
                                    spreadRadius: 40.0),
                              ]),
                        ),
                      ),


                      //icon
                      Positioned(
                        child: Container(
                                      margin: const EdgeInsets.only(top: 5.0, left: 310.0, right: 0.0, bottom: 330.0),
                                      //padding: EdgeInsets.all(.0),
                                      child: Material(
                                        color: Colors.transparent,
                                        child: InkWell(
                                        splashColor: Colors.black,
                                        highlightColor: Colors.black26,
                                        child: IconButton(
                                          onPressed: (){
                                            launchurllink(widget.certi[index].link!);
                                            },
                                          icon: const Icon(
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
           
            
  },
          itemCount: widget.certi.length,
        )
        );
  }
}