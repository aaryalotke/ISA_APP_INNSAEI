import 'package:flutter/material.dart';
import 'models/format_certi.dart';
import 'page_three.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({ Key? key }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       theme: ThemeData(
//         fontFamily: 'Voces',
//         ),
//         home: certi_page(),

//       debugShowCheckedModeBanner: false,
//     );
//   }
// }

class certi_page extends StatefulWidget {
  const certi_page({Key? key}) : super(key: key);

  @override
  State<certi_page> createState() => _certi_pageState();
}

// class certi_page extends StatefulWidget {
//   final List<format_certi> certi;
//      certi_page(this.certi);
//   //const CartScreen({ Key? key }) : super(key: key);

//   @override
//   State<certi_page> createState() => _certi_pageState();
// }

class _certi_pageState extends State<certi_page>
    with SingleTickerProviderStateMixin {
  late TabController controller;

  final List<format_certi> certi = [
    //all 9 people's detail
    format_certi(
      id: '1',
      name: 'a',
      link:
          'https://drive.google.com/drive/u/0/folders/128FEZZDy_NjK2iaWkGYgyRHY9DlW8MoU',
      photo: 'assets/images/certi.jpg',
    ),
    format_certi(
      id: '2',
      name: 'b',
      link:
          'https://drive.google.com/drive/u/0/folders/128FEZZDy_NjK2iaWkGYgyRHY9DlW8MoU',
      photo: 'assets/images/certi2.png',
    ),
    format_certi(
      id: '3',
      name: 'c',
      link:
          'https://drive.google.com/file/d/17xacvh1sDsK6De656zmQmmldYpvOX7AE/view?usp=sharing',
      photo: 'assets/images/certi3.jpg',
    ),
    format_certi(
      id: '4',
      name: 'd',
      link:
          'https://drive.google.com/drive/u/0/folders/128FEZZDy_NjK2iaWkGYgyRHY9DlW8MoU',
      photo: 'assets/images/certi4.jpg',
    ),
  ];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller = TabController(length: 3, vsync: this);
    controller.addListener(() {
      setState(() {});
    });
  }

  @override
  void dispose() {
    // TODO: implement dispose
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.of(context).pop(),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        bottom: TabBar(
          controller: controller,
          indicatorColor: Color(0xFF00467f),
          indicatorSize: TabBarIndicatorSize.label,
          indicatorWeight: 5,
          tabs: [
            Tab(
              child: Text(
                '2021-22    ',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.black,
                  fontFamily: 'Voces',
                ),
                textAlign: TextAlign.center,
              ),
            ),
            Tab(
              child: Text(
                '2022-23    ',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.black,
                  fontFamily: 'Voces',
                ),
                textAlign: TextAlign.center,
              ),
            ),
            Tab(
              child: Text(
                '2023-24    ',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.black,
                  fontFamily: 'Voces',
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
        title: const Text(
          'My Certificates',
          style: TextStyle(
            fontSize: 30,
            color: Colors.black,
            fontFamily: 'Ubuntu_Bold',
          ),
          textAlign: TextAlign.center,
        ),
      ),
      body: SafeArea(
        child: TabBarView(
          controller: controller,
          children: [
            Container(
              // height: MediaQuery.of(context).size.height,
              //  width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.all(20),
              child: ListView(
                children: <Widget>[
                  page_three(certi),
                ],
              ),
            ),
            Container(
              // height: MediaQuery.of(context).size.height,
              //  width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.all(20),
              child: ListView(
                children: <Widget>[
                  page_three(certi),
                ],
              ),
            ),
            Container(
              // height: MediaQuery.of(context).size.height,
              //  width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.all(20),
              child: ListView(
                children: <Widget>[
                  page_three(certi),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
