import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
void main() {
  runApp(
      const MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Home Page',
        home: HomeScreen(),
      )
  );
}
class HomeScreen extends StatefulWidget{
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState(){
    return _HomeScreenState();
 
  }
}
class _HomeScreenState extends State<HomeScreen> {
 
  // final urlImages = [
  //   'https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885__480.jpg',
  //   'https://cdn.pixabay.com/photo/2018/01/14/23/12/nature-3082832__480.jpg',
  //   'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS27bfOgxaVgRk8bXjFqNWFIKbM8vlcI83hOA&usqp=CAU'
  // ];
  @override
  Widget build(BuildContext context) {
 
   // final _minimumPadding = 5.0;
    return Scaffold(
        // resizeToAvoidBottomInset: false,
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          title: const Text('HOME', style: TextStyle(
              fontFamily: 'Ubuntu', fontSize: 20, color: Colors.black),
          ),
          centerTitle: true,
        ),
 
        //side bar
        drawer: Drawer(
         
          child: ListView(
            children: <Widget>[
             
             InkWell(
               highlightColor: Colors.orange,
              onTap:() {},
              child: const ListTile(
                title: Text('Home'),
              ),
             ),
             InkWell(
                highlightColor: Colors.orange,
              onTap:() {},
              child: const ListTile(
                title: Text('Developers'),
              ),
             ),
             InkWell(
                highlightColor: Colors.orange,
              onTap:() {},
              child: const ListTile(
                title: Text('Know Your Council'),
              ),
             ),
             InkWell(
                highlightColor: Colors.orange,
              onTap:() {},
              child: const ListTile(
                title: Text('Contact Us'),
              ),
             ),
            ],
          ),
        ),
 
       
     body: SingleChildScrollView(
     child:SizedBox(
       
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height*1,
        child: Stack(
          clipBehavior: Clip.antiAlias,
         
          children: <Widget>[
            Container(
            width: double.infinity,
            margin: const EdgeInsets.only(top: 0, bottom: 50),
            child: CarouselSlider(
            items: [
              Container(
                        child: Image.asset(
                          'assets/images/homepagecarousel.jpg',
                         height: MediaQuery.of(context).size.height*0.3,
                          width: MediaQuery.of(context).size.width*0.99,
 
                        ),
              ),
              Container(
                        child: Image.asset(
                          'assets/images/homepagecarousell.jpg',
                         height: MediaQuery.of(context).size.height*0.3,
                        ),
              ),
              Container(
                        child: Image.asset(
                          'assets/images/homepagecarouselll.jpg',
                       height: MediaQuery.of(context).size.height*0.3,
                        ),
              )
            ],
              options: CarouselOptions(
              height: MediaQuery.of(context).size.height*0.25,
                // aspectRatio: 16/9,
                 enlargeCenterPage: true,
                autoPlay: true,
                autoPlayAnimationDuration: const Duration(milliseconds: 800),
                viewportFraction: 0.9,
               
              ),
          ),
        ),
 
        //Upcoming workshops
 
        Positioned(
             top: MediaQuery.of(context).size.height * 0.25,
              child: Container(
                width: MediaQuery.of(context).size.width,
                        padding: const EdgeInsets.fromLTRB(20, 5, 20, 0),
              child: const Text('Upcoming Workshop',
              style: TextStyle(
                fontFamily: 'Voces',
              fontSize: 18,
              color: Colors.black),
              textAlign: TextAlign.left),
              ),
                      ),
 
                      //poster
                    Positioned(
              top: MediaQuery.of(context).size.height * 0.30,
              child: Container(
              child: getImageAsset(
              ) ,
              )
                    ),
 
                    //Upcoming Workshop Title
                  Positioned(
 
             top: MediaQuery.of(context).size.height * 0.61,
              child: Container(
                width: MediaQuery.of(context).size.width,
                       padding: const EdgeInsets.fromLTRB(20, 5, 20, 0),
              child: const Text('Analog Electronics Workshop',
              style: TextStyle(
                fontFamily: 'Voces',
              fontSize: 16,
              color: Colors.black),
              textAlign: TextAlign.center
              ),
              ),
               ),
 
              //button
              Positioned(
             top: MediaQuery.of(context).size.height * 0.64,
              child: Container(
                 alignment: Alignment.center,
                width: MediaQuery.of(context).size.width,
              // padding: const EdgeInsets.fromLTRB(20, 5, 20, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
             
                children:<Widget> [
                  Container(
                    alignment: Alignment.center,
                    //padding: const EdgeInsets.fromLTRB(20, 5, 20, 0),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFF00467F),
                         padding: const EdgeInsets.fromLTRB(40, 10, 5, 10),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(4.0),
                        ),
                        ),
                         onPressed: (){},
                            child: const Text('ENQUIRE           ',style: TextStyle(color: Colors.white,fontSize: 14),),
                           
                           
                          ),
 
                          ),
                           Container(
                             child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFF00467F),
                      padding: const EdgeInsets.fromLTRB(30, 10, 20, 10),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(4.0),
                        ),
                        ),
                         onPressed: (){},
                         child: const Text('  REGISTER   ',style: TextStyle(color: Colors.white,fontSize: 14),),
                          ),
                          )
                ],
              )
              ),
               ),
 
             //Sponsors
 
             Positioned(
 
             top: MediaQuery.of(context).size.height * 0.715,
              child: Container(
                width: MediaQuery.of(context).size.width,
                       padding: const EdgeInsets.fromLTRB(20, 5, 20, 0),
              child: const Text('Sponsors',
              style: TextStyle(
                fontFamily: 'Voces',
              fontSize: 18,
              color: Colors.black),
              textAlign: TextAlign.left
              ),
              ),
               ),
 
                Positioned(
             top: MediaQuery.of(context).size.height * 0.752,
              child: Container(
                width: MediaQuery.of(context).size.width,
               
              padding: const EdgeInsets.fromLTRB(20, 5, 20, 0),
              child: Row(
                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children:<Widget> [
                  Container(
                    height: 191.0,
                    width: 160.0,
                    padding: const EdgeInsets.fromLTRB(20, 5, 20, 0),
                    decoration: const BoxDecoration(
                        color: Colors.white,
                      boxShadow: [BoxShadow(
                        color: Colors.grey,
                        blurStyle: BlurStyle.normal,
                        blurRadius: 7,
                      ),
                      ],
                    ),
                    child:Container(
                     
                    decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color(0xFFe0f2f5)),
                        alignment: Alignment.topCenter,
                    ),
                  ),
                   Container(
                    height: 191.0,
                    width: 160.0,
                    padding: const EdgeInsets.fromLTRB(20, 4, 20, 0),
                   
                    decoration: const BoxDecoration(
                        color: Colors.white,
                      boxShadow: [BoxShadow(
                        color: Colors.grey,
                        blurRadius: 07,
                      ),
                      ],
                    ),
                   
                    child:Container(
                      alignment: Alignment.topRight,
                    decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color(0xFFe0f2f1)
                        ),
                         
                         
                    ),
                 
                   
                  ),

                  Container(
                    height: 191.0,
                    width: 160.0,
                    padding: const EdgeInsets.fromLTRB(20, 5, 20, 0),
                    decoration: const BoxDecoration(
                        color: Colors.white,
                      boxShadow: [BoxShadow(
                        color: Colors.grey,
                        blurStyle: BlurStyle.normal,
                        blurRadius: 7,
                      ),
                      ],
                    ),
                    child:Container(
                     
                    decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color(0xFFe0f2f5)),
                        alignment: Alignment.topCenter,
                    ),
                  ),
                ],
                ),
              ),
                ),
 Positioned(
 
             top: MediaQuery.of(context).size.height * 0.952,
              child: SizedBox(
                width: MediaQuery.of(context).size.width,
                       
              child:  Row(
                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children:<Widget> [
                  Container(
                    padding: const EdgeInsets.fromLTRB(30, 5, 35, 0),
              child: const Text('Sponsors',
              style: TextStyle(
                fontFamily: 'Voces',
              fontSize: 16,
              color: Colors.black),
              textAlign: TextAlign.center
              ),
              ),
              Container(
                padding: const EdgeInsets.fromLTRB(30, 5, 35, 0),
              child: const Text('Sponsors',
              style: TextStyle(
                fontFamily: 'Voces',
              fontSize: 16,
              color: Colors.black),
              textAlign: TextAlign.center
              ),
              ),

              Container(
                padding: const EdgeInsets.fromLTRB(30, 5, 35, 0),
              child: const Text('Sponsors',
              style: TextStyle(
                fontFamily: 'Voces',
              fontSize: 16,
              color: Colors.black),
              textAlign: TextAlign.center
              ),
              ),
                ]
              ),
               ),
             
                ),
                ],
                  ),
                  ),
     ),
 
    );
       
    // Widget buildImage(String urlImage, int index) =>
    //     Container(
    //       margin: EdgeInsets.symmetric(horizontal: 12),
    //       color: Colors.grey,
  }  
  }
    Widget getImageAsset(){
    AssetImage assetImage = const AssetImage('assets/images/AnalogElectronicsPoster.jpg');
    Image image = Image(image: assetImage,height: 250, width: 400,
      alignment: Alignment.center,);
    return Container(child: image,);
  }
       
 
