import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import './models/format_developers.dart';
import 'package:url_launcher/url_launcher.dart';

import 'api_class1.dart';
//import 'models/utils.dart';

import 'pageone_dev.dart';
//importing the packages required for integration
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'dart:async';




void main() {
  runApp( developersPagetwo());
}


class developersPagetwo extends StatelessWidget {
  // This widget is the root of your application.


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: 'Voces',
      ),
      home: trailDevelopers(),
    );
  }
}

class trailDevelopers extends StatefulWidget {
  // String titleInput;
  // String amountInput;
  @override
  State<trailDevelopers> createState() => _traildevelopersState();
}



class _traildevelopersState extends State<trailDevelopers> {

  List<Format> people= [
 
];

 bool isLoaded = false;
void initState(){
  super.initState();
  getdev();
}
   getdev() async {
  //   //List decoded = jsonDecode(await api().getDevelopersList("eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNjc0MDY0NDEyLCJpYXQiOjE2NjYyODg0MTIsImp0aSI6IjNiMjE3YjdjOWRjMTRlNDM5NzdmNGU5MWM3ODYzNzE5IiwidXNlcl9pZCI6NX0.yAHpYbkrYj2ynio84iS_tZ7Z0z8LpQXMwtpirv-PIos"))["post"];
    
    //trail1


  //   List dec = jsonDecode(await api().getDevelopersList("eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNjc0MDY0NDEyLCJpYXQiOjE2NjYyODg0MTIsImp0aSI6IjNiMjE3YjdjOWRjMTRlNDM5NzdmNGU5MWM3ODYzNzE5IiwidXNlcl9pZCI6NX0.yAHpYbkrYj2ynio84iS_tZ7Z0z8LpQXMwtpirv-PIos"))["post"];
  //   print(">>> Developers List retrieved successfully");
  //  for (var element in dec) {
  //    Format item = Format.fromJson(element);
  //      people.add(item);


  //trail2

  //var response = await api().getDevelopersList("eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNjc0MDY0NDEyLCJpYXQiOjE2NjYyODg0MTIsImp0aSI6IjNiMjE3YjdjOWRjMTRlNDM5NzdmNGU5MWM3ODYzNzE5IiwidXNlcl9pZCI6NX0.yAHpYbkrYj2ynio84iS_tZ7Z0z8LpQXMwtpirv-PIos");
  var response = await api().getDevelopersList("eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNjgzOTE2MzkyLCJpYXQiOjE2NzYxNDAzOTIsImp0aSI6IjJiZjBiMjY0OGJmYzRhNGViNDIxODk2YzBmMmI2NWIxIiwidXNlcl9pZCI6MX0._-pItytK8JG10c5nH_UeC57R23xLBGrPFFRYcCzzejQ");

    print(response);
    // List decoded = jsonDecode(response);
    List list = (jsonDecode(response) as List<dynamic>) ;
    
    print(">>> developers list retrieved successfully");


    
    for (var element in list) {
      print("----------------------------------------------------------");
      print(element["link"]);
      for( var coun in element["link"]){

        Format item = Format.fromJson(coun);
         people.add(item);
      

      }

     
      
    }
    Future.delayed(Duration(seconds: 3),(){
   isLoaded = true;
   setState(() {});
    });
    
    
    print(people);
 
  }


  // final List<Format> people = [ //all 9 people's detail
  //   Format(
  //     id: '1',
  //     name: 'Dhruvisha Mondhe',
  //     post: 'Technical Executive',
  //     maillink: 'mailto:2019.dhruvisha.mondhe@ves.ac.in	',
  //     instalink: 'https://instagram.com/dhruvishamondhe01?utm_medium=copy_link',
  //     inlink: 'https://www.linkedin.com/in/dhruvisha-m-971284207',
  //     photo: 'assets/images/Dhruvisha Mondhe.jpeg',
  //   ),
  //   Format(
  //     id: '2',
  //     name: 'Saritha Tharakan',
  //     post: 'Technical Executive',
  //     maillink: 'mailto:2019.saritha.tharakan@ves.ac.in	',
  //     instalink: 'https://instagram.com/sarithatharakan?utm_medium=copy_link',
  //     inlink: 'https://www.linkedin.com/in/saritha-tharakan-5573951b1',
  //     photo: 'assets/images/Saritha Tharakan.jpg',
  //   ),
  //   Format(
  //     id: '3',
  //     name: 'Muskan Hassanandani',
  //     post: 'Web Executive',
  //     maillink: 'mailto:2019.muskan.hassanandani@ves.ac.in	',
  //     instalink: 'https://instagram.com/muskan_hassanandani?utm_medium=copy_link',
  //     inlink: 'https://www.linkedin.com/in/muskan-hassanandani-569284205',
  //     photo:'assets/images/Muskan.jpg',
  //   ),
  //   Format(
  //     id: '4',
  //     name: 'Rashmi Singh',
  //     post: 'Web Editor',
  //     maillink: 'mailto:2019.rashmi.singh@ves.ac.in	',
  //     instalink: '',
  //     inlink: 'https://www.linkedin.com/in/rashmi-singh-b3982520b',
  //     photo: 'assets/images/Rashmi.jpg',
  //   ),
  //   Format(
  //     id: '5',
  //     name: 'Nidhi Mundhada',
  //     post: 'Jr.Editor',
  //     maillink: 'mailto:2019.nidhi.mundhada@ves.ac.in	',
  //     instalink: 'https://instagram.com/nidhee_mundhada?utm_medium=copy_link',
  //     inlink: 'https://www.linkedin.com/in/nidhi-mundhada-619926213',
  //      photo: 'assets/images/Nidhi Mundhada.jpg',
  //   ),
  //   Format(
  //     id: '6',
  //     name: 'Aarya Lotke',
  //     post: 'SE Coordinator',
  //     maillink: 'mailto:2020.aarya.lotke@ves.ac.in	',
  //     instalink: '',
  //     inlink: 'https://www.linkedin.com/in/aarya-lotke-273092222',
  //     photo: 'assets/images/Aarya Lotke.jpg',
  //   ),
  //   Format(
  //     id: '7',
  //     name: 'Rajnandini Verma',
  //     post: 'SE Coordinator',
  //     maillink: 'mailto:2020.rajnandini.verma@ves.ac.in	',
  //     instalink: 'https://instagram.com/_rajnandini_verma?utm_medium=copy_link',
  //     inlink: 'https://www.linkedin.com/in/rajnandini-verma-4191b221a',
  //     photo: 'assets/images/Rajnandini Verma.jpeg',
  //   ),
  //   Format(
  //     id: '8',
  //     name: 'Yash Chavan',
  //     post: 'SE Coordinator',
  //     maillink: 'mailto:2020.yash.chavan@ves.ac.in	',
  //     instalink: 'https://instagram.com/yash_c10?utm_medium=copy_link',
  //     inlink: 'https://www.linkedin.com/in/yash-chavan-a4a545227',
  //     photo: 'assets/images/Yash Chavan.jpg',
  //   ),
  //   Format(
  //     id: '9',
  //     name: 'Nilesh Sharma',
  //     post: 'SE Coordinator',
  //     maillink: 'mailto:2020.nilesh.sharma@ves.ac.in	',
  //     instalink: 'https://instagram.com/sharmanilesh915?utm_medium=copy_link',
  //     inlink: 'https://www.linkedin.com/in/nilesh-sharma-53bb58214',
  //     photo: 'assets/images/Nilesh Sharma.jpg',
  //   ),
  //   Format(
  //     id: '10',
  //     name: 'Sanchit Mhadgut',
  //     post: 'SE Coordinator',
  //     maillink: 'mailto:2020.sanchit.mhadgut@ves.ac.in	',
  //     instalink: 'https://instagram.com/sanchit_2906?igshid=YmMyMTA2M2Y=',
  //     inlink: 'https://www.linkedin.com/in/sanchit-mhadgut-143193220',
  //     photo: 'assets/images/Sanchit Mhadgut.jpg',
  //   ),
  // ];

//MediaQueryData media;
  @override
  Widget build(BuildContext context) {
  //
    return Scaffold(
      //debugShowCheckedModeBanner: false,
      //height: MediaQuery.of(context).size.height,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: Text('DEVELOPERS', style: TextStyle(
              fontFamily: 'Ubuntu', fontSize: 25, color: Colors.black),),
          centerTitle: true,
        ),
        body: isLoaded?
        Container(
          width: double.infinity,
          height: MediaQuery.of(context).size.height,

          padding: EdgeInsets.all(10),
          child: ListView(

                        children: <Widget>[
                    //Code for images part
                     pageone_dev(people) 
                        //galleryThird ko call kiya with images as arguments
                  ],
          ),
        ):Center(child: CircularProgressIndicator(),),


        // Container(
        //         padding: EdgeInsets.all(20),
        //         child: ListView(
        //           children: <Widget>[
        //             //Code for images part
        //              galleryThird(
        //                 others) 
        //                 //galleryThird ko call kiya with images as arguments
        //           ],
        //         ),
        //       )

    );
  }
}