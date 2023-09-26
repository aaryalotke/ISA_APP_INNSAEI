// import 'package:flutter/material.dart';
// import './models/format.dart';
// import 'pageone.dart';

// class developersPage extends StatelessWidget {
//   // This widget is the root of your application.

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       theme: ThemeData(
//         fontFamily: 'Voces',
//       ),
//       home: trailDevelopers(),
//     );
//   }
// }

// class trailDevelopers extends StatefulWidget {
//   // String titleInput;
//   // String amountInput;
//   @override
//   State<trailDevelopers> createState() => _developersState();
// }

// class _developersState extends State<trailDevelopers> {
//   final List<Format> people = [
//     //all 9 people's detail
//     Format(
//       id: '1',
//       name: 'Dhruvisha Mondhe',
//       post: 'Technical Executive',
//       maillink: 'mailto:2019.dhruvisha.mondhe@ves.ac.in  ',
//       instalink: 'https://instagram.com/dhruvishamondhe01?utm_medium=copy_link',
//       inlink: 'https://www.linkedin.com/in/dhruvisha-m-971284207',
//       photo: '',
//     ),
//     Format(
//       id: '2',
//       name: 'Saritha Tharakan',
//       post: 'Technical Executive',
//       maillink: 'mailto:2019.saritha.tharakan@ves.ac.in  ',
//       instalink: 'https://instagram.com/sarithatharakan?utm_medium=copy_link',
//       inlink: 'https://www.linkedin.com/in/saritha-tharakan-5573951b1',
//       photo: '',
//     ),
//     Format(
//       id: '3',
//       name: 'Muskan Hassanandani',
//       post: 'Web Executive',
//       maillink: 'mailto:2019.muskan.hassanandani@ves.ac.in ',
//       instalink:
//           'https://instagram.com/muskan_hassanandani?utm_medium=copy_link',
//       inlink: 'https://www.linkedin.com/in/muskan-hassanandani-569284205',
//       photo: '.jpg',
//     ),
//     Format(
//       id: '4',
//       name: 'Rashmi Singh',
//       post: 'Web Editor',
//       maillink: 'mailto:2019.rashmi.singh@ves.ac.in  ',
//       instalink: '',
//       inlink: 'https://www.linkedin.com/in/rashmi-singh-b3982520b',
//       photo: '.jpg',
//     ),
//     Format(
//       id: '5',
//       name: 'Nidhi Mundhada',
//       post: 'Jr.Editor',
//       maillink: 'mailto:2019.nidhi.mundhada@ves.ac.in  ',
//       instalink: 'https://instagram.com/nidhee_mundhada?utm_medium=copy_link',
//       inlink: 'https://www.linkedin.com/in/nidhi-mundhada-619926213',
//       photo: '.jpg',
//     ),
//     Format(
//       id: '6',
//       name: 'Aarya Lotke',
//       post: 'SE Coordinator',
//       maillink: 'mailto:2020.aarya.lotke@ves.ac.in ',
//       instalink: '',
//       inlink: 'https://www.linkedin.com/in/aarya-lotke-273092222',
//       photo: 'Aarya Lotke.jpg',
//     ),
//     Format(
//       id: '7',
//       name: 'Rajnandini Verma',
//       post: 'SE Coordinator',
//       maillink: 'mailto:2020.rajnandini.verma@ves.ac.in  ',
//       instalink: 'https://instagram.com/_rajnandini_verma?utm_medium=copy_link',
//       inlink: 'https://www.linkedin.com/in/rajnandini-verma-4191b221a',
//       photo: '.jpg',
//     ),
//     Format(
//       id: '8',
//       name: 'Yash Chavan',
//       post: 'SE Coordinator',
//       maillink: 'mailto:2020.yash.chavan@ves.ac.in ',
//       instalink: 'https://instagram.com/yash_c10?utm_medium=copy_link',
//       inlink: 'https://www.linkedin.com/in/yash-chavan-a4a545227',
//       photo: '.jpg',
//     ),
//     Format(
//       id: '9',
//       name: 'Nilesh Sharma',
//       post: 'SE Coordinator',
//       maillink: 'mailto:2020.nilesh.sharma@ves.ac.in ',
//       instalink: 'https://instagram.com/sharmanilesh915?utm_medium=copy_link',
//       inlink: 'https://www.linkedin.com/in/nilesh-sharma-53bb58214',
//       photo: 'Nilesh Sharma.jpg',
//     ),
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.transparent,
//         elevation: 0,
//         title: Text(
//           'DEVELOPERS',
//           style: TextStyle(
//               fontFamily: 'Ubuntu-Bold', fontSize: 18, color: Colors.black),
//         ),
//         centerTitle: true,
//       ),
//       body: Container(
//         //height: MediaQuery.of(context).size.height,
//         padding: EdgeInsets.all(10),
//         child: ListView(
//           //height: MediaQuery.of(context).size.height,
//           children: <Widget>[pageone(people)],
//         ),
//       ),
//     );
//   }
// }
