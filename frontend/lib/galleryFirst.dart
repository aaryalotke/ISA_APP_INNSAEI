// ignore: file_names
// ignore_for_file: file_names

import "package:flutter/material.dart";
import "./models/gallery.dart";
import "gallery_main.dart";
import "package:intl/intl.dart";
//import "./models/gallery_software.dart";
import "galleryClick.dart";

class galleryFirst extends StatefulWidget {
  final List<gallery> hardware;
  galleryFirst(this.hardware); //Image List for hardware has been recieved

  // final List<gallery_software> gallery_software;
  // galleryFirst(this.gallery_software);//Image List for hardware has been recieved
  @override
  State<galleryFirst> createState() => _gallerySecondState();
}

class _gallerySecondState extends State<galleryFirst> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
        height: size.height * 0.85, //Necessary to prevent Renderbox error
        margin: EdgeInsets.fromLTRB(0, 20, 0, 20),
        child: ListView.builder(
          itemBuilder: (ctx, index) {
            //Itembuilder helps us loop through the list

            //Main Image cards
            return Card(
              margin: EdgeInsets.all(10),
              child: InkWell(
                //Wrap the code in inkwell to make it clickable
                onTap: () {
                  print("tapped");
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => galleryClick(
                          widget.hardware[index].id,
                          widget.hardware[index].name,
                          widget.hardware[index].gallaryPic1,
                          widget.hardware[index].gallaryPic2,
                          widget.hardware[index].gallaryPic3,
                          widget.hardware[index].startDate,
                          widget.hardware[index].endDate,
                          widget.hardware[index].description,
                          
                          
                          ),
                    ),
                  );
                },
                // child: Column(
                //   children: <Widget>[
                //     const Padding(padding: EdgeInsets.fromLTRB(50, 0, 50, 0)),
                //     Image.network(
                //       widget.hardware[index].poster2!,
                //     ), //galleryImages being called through widget. and then accessed like arrays
                //     Container(
                //       padding: const EdgeInsets.all(15),
                //       child: Text(
                //         widget.hardware[index].name!,
                //         style: const TextStyle(
                //           fontSize: 23,
                //           color: Colors.black,
                //           fontFamily: 'Voces',
                //         ),
                //         textAlign: TextAlign.center,
                //       ),
                //     ),
                //   ],
                // ),
 //new Image.network("${widget.hardware[index].poster2}
                 //child: widget.hardware[index].poster2=="" ? Container(height: 0,width: 0,) : Container(child: Column(children:<Widget>[
                  child: widget.hardware[index].poster1=="" ? Container(height: 0,width: 0,) : Container(child: Column(children:<Widget>[
                    const Padding(padding: EdgeInsets.fromLTRB(50, 0, 50, 0)),
                    Image.network(
                      widget.hardware[index].poster1!,
                    ), //galleryImages being called through widget. and then accessed like arrays
                    Container(
                      padding: const EdgeInsets.all(15),
                      child: Text(
                        widget.hardware[index].name!,
                        style: const TextStyle(
                          fontSize: 23,
                          color: Colors.black,
                          fontFamily: 'Voces',
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],),),


              )
            );
          },
          itemCount: widget.hardware.length,
        ));
  }
}
