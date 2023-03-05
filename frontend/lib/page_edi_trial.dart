import 'package:flutter/cupertino.dart';
import "package:flutter/material.dart";
import 'package:url_launcher/url_launcher_string.dart';
import 'models/format_edi.dart';
import 'main.dart';
import 'package:url_launcher/url_launcher.dart';

 
 
 
 
class page_edi extends StatefulWidget {
  final List<Format> editorial;
  page_edi(this.editorial);
  // const page_edi({ Key? key }) : super(key: key);
 
  @override
  State<page_edi> createState() => _page_ediState();
}
 
class _page_ediState extends State<page_edi> {
//  //1
//   _launchURL1() async {
//   const url = 'https://drive.google.com/file/d/1SrEnB7geowNF_cNxbdQYm_qqYhYq1MRp/view';
//   if (await canLaunchUrlString(url)) {
//     await launchUrlString(url);
//   } else {
//     throw 'Could not launch $url';
//   }
// }
// //2
//   _launchURL2() async {
//   const url = 'https://flutterdevs.com/';
//   if (await canLaunchUrlString(url)) {
//     await launchUrlString(url);
//   } else {
//     throw 'Could not launch $url';
//   }
// }
// //3
//   _launchURL3() async {
//   const url = 'https://flutterdevs.com/';
//   if (await canLaunchUrlString(url)) {
//     await launchUrlString(url);
//   } else {
//     throw 'Could not launch $url';
//   }
// }
// //4
//   _launchURL4() async {
//   const url = 'https://flutterdevs.com/';
//   if (await canLaunchUrlString(url)) {
//     await launchUrlString(url);
//   } else {
//     throw 'Could not launch $url';
//   }
// }
// //5
//   _launchURL5() async {
//   const url = 'https://flutterdevs.com/';
//   if (await canLaunchUrlString(url)) {
//     await launchUrlString(url);
//   } else {
//     throw 'Could not launch $url';
//   }
// }
// //6
//   _launchURL6() async {
//   const url = 'https://flutterdevs.com/';
//   if (await canLaunchUrlString(url)) {
//     await launchUrlString(url);
//   } else {
//     throw 'Could not launch $url';
//   }
// }
// //7
//   _launchURL7() async {
//   const url = 'https://flutterdevs.com/';
//   if (await canLaunchUrlString(url)) {
//     await launchUrlString(url);
//   } else {
//     throw 'Could not launch $url';
//   }
// }

launchurledi(String url) async {
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
      
      height: MediaQuery.of(context).size.height,
      
        //width: MediaQuery.of(context).size.width,
        //padding: EdgeInsets.only(bottom: 300), //Necessary to prevent Renderbox error
       // margin: EdgeInsets.fromLTRB(0, 100, 0, 0),
        child: ListView.builder(
          itemBuilder: (ctx, index) {
        return IntrinsicHeight(
          child: Row(  //orange columns ,divider, blue columns
             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                         children: <Widget> [   //for orange column containers
                       
                              //alignment: Alignment.topLeft,
                             // children: <Widget>[
                                Container(
                                  child: Column(
                                    children: <Widget> [

                                     //1st container
                                       Container(
                          margin: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                          // padding: EdgeInsets.fromLTRB(0, 10, 0, 0),                        
                          height: 50,
                          width: 123,
                           decoration: ShapeDecoration(
                            color: Color(0xFFFE735D),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(3.0),
                            ),
                          ),
                          child: Stack(
                                // alignment: Alignment.topLeft,
                              children: <Widget>[
                                Container(
                                  margin: const EdgeInsets.fromLTRB(15, 0, 15, 25),
                                    child: Center(
                                      child: Text(
                                widget.editorial[index].editorial_name!,
                                textAlign: TextAlign.center, style: TextStyle(fontFamily: 'Voces',fontSize: 17,color: Colors.white),),
                                    ),
                                ),
                                
                                Container(
                            margin: const EdgeInsets.fromLTRB(0, 19, 0, 0),
                            child: Center(
                               
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
        primary: Color.fromARGB(255, 234, 160, 147),
         minimumSize: const Size(52, 15),
          // maximumSize: const Size(52, 15),
    ),
   onPressed: (){launchurledi(widget.editorial[index].editorial_link!);},
    child:  const Text('Read',
          textAlign: TextAlign.center,
           style: TextStyle(
                                fontFamily: 'Ubuntu',
                                fontSize: 10,
                                 color: Colors.black),
                                ),
                                     
          
        
 ),
                            ),
                          ),
                          ]            
                          ),
                        ),
                                    

                             //2nd container                  
                            Container(
                         margin: const EdgeInsets.fromLTRB(0, 110, 0, 0),
                          // padding: EdgeInsets.fromLTRB(0, 10, 0, 0),                        
                          height: 50,
                          width: 123,
                           decoration: ShapeDecoration(
                            color: Color(0xFFFE735D),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(3.0),
                            ),
                          ),
                          child: Stack(
                                // alignment: Alignment.topLeft,
                              children: <Widget>[
                                Container(
                                  margin: const EdgeInsets.fromLTRB(15, 0, 15, 25),
                                  child: Center(
                                      child: Text(
                                widget.editorial[index].editorial_name!,
                                textAlign: TextAlign.center, style: TextStyle(fontFamily: 'Voces',fontSize: 17,color: Colors.white),),
                                    ),
                                ),
                                
                                Container(
                            margin: const EdgeInsets.fromLTRB(0, 19, 0, 0),
                            child: Center(
                              child: ElevatedButton(
          style: ElevatedButton.styleFrom(
        primary: Color.fromARGB(255, 234, 160, 147),
         minimumSize: const Size(52, 15),
          // maximumSize: const Size(52, 15),
    ),
    onPressed: (){launchurledi(widget.editorial[index].editorial_link!);},
    child:  const Text('Read',
          textAlign: TextAlign.center,
           style: TextStyle(
                                fontFamily: 'Ubuntu',
                                fontSize: 10,
                                 color: Colors.black),
                                ),
                                     
          
        
 ),
                            ),
                          ),]            
                          ),
                        ),
                                    

                                //3rd container                  
                            Container(
                          margin: const EdgeInsets.fromLTRB(0, 130, 0, 0),
                          // padding: EdgeInsets.fromLTRB(0, 10, 0, 0),                        
                          height: 50,
                          width: 123,
                           decoration: ShapeDecoration(
                            color: Color(0xFFFE735D),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(3.0),
                            ),
                          ),
                          child: Stack(
                                // alignment: Alignment.topLeft,
                              children: <Widget>[
                                Container(
                                    child: Text(
                                widget.editorial[index].editorial_name!,
                                textAlign: TextAlign.center, style: TextStyle(fontFamily: 'Voces',fontSize: 17,color: Colors.white),),
                                ),
                                
                                Container(
                            margin: const EdgeInsets.fromLTRB(0, 28, 0, 0),
                            child: Center(
                              child: ElevatedButton(
          style: ElevatedButton.styleFrom(
        primary: Color.fromARGB(255, 234, 160, 147),
         minimumSize: const Size(52, 15),
          // maximumSize: const Size(52, 15),
    ),
    onPressed: (){launchurledi(widget.editorial[index].editorial_link!);},
    child:  const Text('Read',
          textAlign: TextAlign.center,
           style: TextStyle(
                                fontFamily: 'Ubuntu',
                                fontSize: 10,
                                 color: Colors.black),
                                ),
                                     
          
        
 ),
                            ),
                          ),]            
                          ),
                        ),

                         //4th container                  
                            Container(
                          margin: const EdgeInsets.fromLTRB(0, 130, 0, 0),
                          // padding: EdgeInsets.fromLTRB(0, 10, 0, 0),                        
                          height: 50,
                          width: 123,
                           decoration: ShapeDecoration(
                            color: Color(0xFFFE735D),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(3.0),
                            ),
                          ),
                          child: Stack(
                                // alignment: Alignment.topLeft,
                              children: <Widget>[
                                Container(
                                  margin: const EdgeInsets.fromLTRB(15, 0, 15, 25),
                                    child: Center(
                                      child: Text(
                                widget.editorial[index].editorial_name!,
                                textAlign: TextAlign.center, style: TextStyle(fontFamily: 'Voces',fontSize: 17,color: Colors.white),),
                                    ),
                                ),
                                
                                Container(
                            margin: const EdgeInsets.fromLTRB(0, 19, 0, 0),
                            child: Center(
                              child: ElevatedButton(
          style: ElevatedButton.styleFrom(
        primary: Color.fromARGB(255, 234, 160, 147),
         minimumSize: const Size(52, 15),
          // maximumSize: const Size(52, 15),
    ),
    onPressed: (){launchurledi(widget.editorial[index].editorial_link!);},
    child:  const Text('Read',
          textAlign: TextAlign.center,
           style: TextStyle(
                                fontFamily: 'Ubuntu',
                                fontSize: 10,
                                 color: Colors.black),
                                ),
                                     
          
        
 ),
                            ),
                          ),]            
                          ),
                        ),
                                    
                                    ]
                                  )
                                ),
                            
                           
                                

                                


                                





                              

                                 




                                 VerticalDivider(
                                   color: Colors.black,
                                   thickness: 2,
                                   width: 50,
                                   endIndent: 80,
                                   indent: 10,
                                 ),






                              Container(
                            child: Stack(
                              alignment: Alignment.topLeft,
                              children: <Widget>[
                                Container(
                                  child: Column(
                                    children: <Widget> [

                                     //1st container
                                       Container(
                          margin: const EdgeInsets.fromLTRB(0, 90, 0, 0),
                          // padding: EdgeInsets.fromLTRB(0, 10, 0, 0),                        
                          height: 50,
                          width: 123,
                           decoration: ShapeDecoration(
                            color: Color(0xFF00467f),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(3.0),
                            ),
                          ),
                          child: Stack(
                                // alignment: Alignment.topLeft,
                              children: <Widget>[
                                Container(
                                  margin: const EdgeInsets.fromLTRB(15, 0, 15, 25),
                                    child: Center(
                                      child: Text(
                                widget.editorial[4].editorial_name!,
                                textAlign: TextAlign.center, style: TextStyle(fontFamily: 'Voces',fontSize: 17,color: Colors.white),),
                                    ),
                                ),
                                
                                Container(
                            margin: const EdgeInsets.fromLTRB(0, 19, 0, 0),
                            child: Center(
                             child: ElevatedButton(
          style: ElevatedButton.styleFrom(
         primary: Color.fromARGB(255, 79, 78, 104),
         minimumSize: const Size(52, 15),
          // maximumSize: const Size(52, 15),
    ),
    onPressed: (){launchurledi(widget.editorial[4].editorial_link!);},
    child:  const Text('Read',
          textAlign: TextAlign.center,
           style: TextStyle(
                                fontFamily: 'Ubuntu',
                                fontSize: 10,
                                 color: Colors.white),
                                ),
                                     
          
        
 ),
                            ),
                          ),]            
                          ),
                        ),
                                    

                             //2nd container                  
                            Container(
                          margin: const EdgeInsets.fromLTRB(0, 110, 0, 0),
                          // padding: EdgeInsets.fromLTRB(0, 10, 0, 0),                        
                          height: 50,
                          width: 123,
                           decoration: ShapeDecoration(
                            color: Color(0xFF00467f),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(3.0),
                            ),
                          ),
                          child: Stack(
                                // alignment: Alignment.topLeft,
                              children: <Widget>[
                                Container(
                                  margin: const EdgeInsets.fromLTRB(15, 0, 15, 25),
                                    child: Center(
                                      child: Text(
                                widget.editorial[5].editorial_name!,
                                textAlign: TextAlign.center, style: TextStyle(fontFamily: 'Voces',fontSize: 17,color: Colors.white),),
                                    ),
                                ),
                                
                                Container(
                            margin: const EdgeInsets.fromLTRB(0, 19, 0, 0),
                            child: Center(
                               child: ElevatedButton(
          style: ElevatedButton.styleFrom(
        primary: Color.fromARGB(255, 79, 78, 104),
         minimumSize: const Size(52, 15),
          // maximumSize: const Size(52, 15),
    ),
    onPressed: (){launchurledi(widget.editorial[5].editorial_link!);},
    child:  const Text('Read',
          textAlign: TextAlign.center,
           style: TextStyle(
                                fontFamily: 'Ubuntu',
                                fontSize: 10,
                                 color: Colors.white),
                                ),
                                     
          
        
 ),
                            ),
                          ),]            
                          ),
                        ),
                                    

                                //3rd container                  
                            Container(
                          margin: const EdgeInsets.fromLTRB(0, 130, 0, 0),
                          // padding: EdgeInsets.fromLTRB(0, 10, 0, 0),                        
                          height: 50,
                          width: 123,
                           decoration: ShapeDecoration(
                            color: Color(0xFF00467f),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(3.0),
                            ),
                          ),
                          child: Stack(
                                // alignment: Alignment.topLeft,
                              children: <Widget>[
                                Container(
                                    child: Text(
                                widget.editorial[6].editorial_name!,
                                textAlign: TextAlign.center, style: TextStyle(fontFamily: 'Voces',fontSize: 17,color: Colors.white),),
                                ),
                                
                                Container(
                            margin: const EdgeInsets.fromLTRB(0, 28, 0, 0),
                            child: Center(
                              child: ElevatedButton(
          style: ElevatedButton.styleFrom(
         primary: Color.fromARGB(255, 79, 78, 104),
         minimumSize: const Size(52, 15),
          // maximumSize: const Size(52, 15),
    ),
    onPressed: (){launchurledi(widget.editorial[6].editorial_link!);},
    child:  const Text('Read',
          textAlign: TextAlign.center,
           style: TextStyle(
                                fontFamily: 'Ubuntu',
                                fontSize: 10,
                                 color: Colors.white),
                                ),
                                     
          
        
 ),
                            ),
                          ),]            
                          ),
                        ),
                                    
                                    ]
                                  )
                                )
                              ]
                            )
                          ),
                               
    
                         ],
                      ),
          
        );
        },
          itemCount: widget.editorial.length,
        )
  
    );
   
   
  }
  
 
}