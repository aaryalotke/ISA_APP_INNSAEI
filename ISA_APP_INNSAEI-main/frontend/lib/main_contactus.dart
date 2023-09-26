import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
// import 'package:isa/Progress.dart';
import 'dart:convert';
import 'dart:async';

import 'package:isa/home_new.dart';

import 'custom_exception.dart';
import 'main_profile.dart';

// import 'home.dart';

// void main() {
//   // runApp(
//   //     MaterialApp(
//   //         debugShowCheckedModeBanner: false,
//   //       title: 'CONTACT US',
//   //       home: SIForm(),
//   //     )
//   // );
// }
class SIForm extends StatefulWidget {
  final String access;
  const SIForm(this.access, {Key? key}) : super(key: key);
  @override
  State<StatefulWidget> createState() {
    return _SIFormState();
  }
}

class _SIFormState extends State<SIForm> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 70, fontWeight: FontWeight.bold, color: Colors.white);

  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Index 0: Contact',
      style: optionStyle,
    ),
    Text(
      'Index 1: Home',
      style: optionStyle,
    ),
    Text(
      'Index 2: Profile',
      style: optionStyle,
    ),
  ];

  void _onItemTapped(int index) {
    switch (index) {
      case 0:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => SIForm(widget.access)),
        );
        break;
      case 1:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => homePage(widget.access)),
        );
        break;
      case 2:
        Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => profile_members(widget.access)),
        );
        break;
    }
    setState(() {
      _selectedIndex = index;
    });
  }

  bool isLoading = false;

  Future<String> sendFeedback(String name, String email, String phoneNumber,
      String message, String access) async {
    final response = await http.post(
      Uri.parse("http://innsaeiapp.isavesit.org.in/app/api/users/ContactUs/"),
      // "http://10.0.2.2:8000/app/api/users/ContactUs/"),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
        'Authorization': access,
      },
      body: jsonEncode(<String, String>{
        'name': name,
        'email': email,
        'message': message,
        'phoneNumber': phoneNumber
      }),
    );
    if (response.statusCode == 200 || response.statusCode == 201) {
      print('feedback gaya');

      setState(() {
        isLoading = true;
      });
      return response.body;
    } else {
      print('feedback nahi gaya');
      print(response.body);
      throw CustomException(message: 'Failed to send feedback.');
    }
    // else {
    //                       final snackBar = SnackBar(
    //                         content: const Text(
    //                           'Feedback not sent',
    //                           style: TextStyle(
    //                             fontSize: 18,
    //                             color: Colors.red,
    //                             fontFamily: 'Ubuntu',
    //                           ),
    //                           textAlign: TextAlign.center,
    //                         ),
    //                         // action: SnackBarAction(
    //                         //   label: 'Try Again',
    //                         //   onPressed: () {
    //                         //     // Some code to undo the change.
    //                         //     // Navigator.push(
    //                         //     //   context,
    //                         //     //   MaterialPageRoute(
    //                         //     //       builder: (context) => new_main()),
    //                         //     // );
    //                         //   },
    //                         // ),
    //                       );
    //                       ScaffoldMessenger.of(context).showSnackBar(snackBar);
    //                     }
  }

  final _minimumPadding = 5.0;

  final name = TextEditingController();
  final email = TextEditingController();
  final message = TextEditingController();
  final phoneNumber = TextEditingController();

  @override
  Widget build(BuildContext context) => GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: Scaffold(
          resizeToAvoidBottomInset: false,
          appBar: AppBar(
            leading: IconButton(
              icon: const Icon(Icons.arrow_back, color: Colors.black),
              onPressed: () => Navigator.of(context).pop(),
            ),
            backgroundColor: Colors.white,
            elevation: 0,
            title: const Text(
              'CONTACT US',
              style: TextStyle(
                  fontFamily: 'Ubuntu_Bold', fontSize: 30, color: Colors.black),
            ),
            centerTitle: true,
          ),
          body: SafeArea(
            child: SingleChildScrollView(
              reverse: true,
              child: Container(
                width: double.infinity,
                margin: EdgeInsets.all(_minimumPadding * 3),
                child: Column(
                  // alignment: Alignment.center,
                  children: <Widget>[
                    Container(
                      margin: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                      padding: const EdgeInsets.fromLTRB(0, 5, 0, 5),
                      height: 200,
                      width: 200,
                      // child: Image.asset("assets/contact.png")
                      child: const Image(
                        image: AssetImage("assets/images/contact.png"),
                        fit: BoxFit.cover,
                        // alignment: FractionalOffset.topCenter,
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      margin: const EdgeInsets.only(top: 10),
                      padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                      child: TextField(
                        controller: name,
                        decoration: InputDecoration(
                          filled: true,
                          labelText: 'Name',
                          fillColor: Colors.blue.shade100,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide.none,
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: const BorderSide(color: Colors.blue),
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      margin: const EdgeInsets.only(top: 10),
                      padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                      child: TextField(
                        controller: email,
                        decoration: InputDecoration(
                          filled: true,
                          labelText: 'Email',
                          fillColor: Colors.blue.shade100,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide.none,
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: const BorderSide(color: Colors.blue),
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      margin: const EdgeInsets.only(top: 10),
                      padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                      child: TextField(
                        controller: phoneNumber,
                        decoration: InputDecoration(
                          filled: true,
                          labelText: 'Phone No.',
                          fillColor: Colors.blue.shade100,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide.none,
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: const BorderSide(color: Colors.blue),
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      margin: const EdgeInsets.only(top: 10),
                      padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                      child: TextField(
                        controller: message,
                        decoration: InputDecoration(
                          filled: true,
                          labelText: 'Message',
                          fillColor: Colors.blue.shade100,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide.none,
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: const BorderSide(color: Colors.blue),
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                    ),
                    Container(
                        width: MediaQuery.of(context).size.width,
                        margin: const EdgeInsets.only(top: 10),
                        padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                        child: Row(
                          children: <Widget>[
                            Expanded(
                                child: isLoading
                                    ? const Center(
                                        child: CircularProgressIndicator())
                                    : ElevatedButton(
                                        child: const Text(
                                          'Submit',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 16),
                                        ),
                                        style: ElevatedButton.styleFrom(
                                          backgroundColor:
                                              const Color(0xFF00467F),
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 100, vertical: 10),
                                          elevation: 0,
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(5.0),
                                          ),
                                        ),
                                        onPressed: () async {
                                          setState(() {
                                            isLoading = true;
                                          });
                                          print(widget.access);
                                          print(name.text);
                                          print(email.text);
                                          print(phoneNumber.text);
                                          print(message.text);

                                          try {
                                            var res = await sendFeedback(
                                              name.text,
                                              email.text,
                                              phoneNumber.text,
                                              message.text,
                                              'Bearer ' + widget.access,
                                            );
                                            var jsonData = jsonDecode(res);
                                            var access =
                                                'Bearer ' + widget.access;

                                            //snackbar

                                            if (jsonData["status"] == 1) {
                                              ScaffoldMessenger.of(context)
                                                  .showSnackBar(const SnackBar(
                                                content: Text(
                                                    "Feedback sent successfully!"),
                                                backgroundColor: Colors.green,
                                                elevation: 10,
                                                behavior:
                                                    SnackBarBehavior.floating,
                                                margin: EdgeInsets.all(5),
                                              ));
                                              // Navigator.push(
                                              //   context,
                                              //   MaterialPageRoute(
                                              //       builder: (context) =>
                                              //           SIForm(widget.access)),
                                              // );
                                              // print('OTP sent to member - ' + otp_m.text);
                                              message.clear();
                                              phoneNumber.clear();
                                              email.clear();
                                              name.clear();
                                            } else {
                                              const snackBar = SnackBar(
                                                content: Text(
                                                  'Feedback not sent!',
                                                  style: TextStyle(
                                                    fontSize: 18,
                                                    color: Colors.red,
                                                    fontFamily: 'Ubuntu',
                                                  ),
                                                  textAlign: TextAlign.center,
                                                ),
                                              );
                                              ScaffoldMessenger.of(context)
                                                  .showSnackBar(snackBar);
                                            }
                                          } catch (e) {
                                            ScaffoldMessenger.of(context)
                                                .showSnackBar(SnackBar(
                                              content: Text(e.toString()),
                                              backgroundColor: Colors.red,
                                              elevation: 10,
                                              behavior:
                                                  SnackBarBehavior.floating,
                                              margin: const EdgeInsets.all(5),
                                            ));
                                          }
                                          isLoading = false;
                                          setState(() {});
                                        },
                                      )),
                          ],
                        )),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      margin: const EdgeInsets.only(top: 5),
                      padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
                      child: const Text('For any concern please contact:',
                          style: TextStyle(
                              fontFamily: 'Voces',
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                          textAlign: TextAlign.left),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      margin: const EdgeInsets.only(top: 5),
                      padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
                      child: const Text('Nikhil Gore(President)',
                          style: TextStyle(
                              fontFamily: 'Voces',
                              fontSize: 16,
                              color: Colors.black),
                          textAlign: TextAlign.left),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      margin: const EdgeInsets.only(top: 5),
                      padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
                      child: const Text('9325453710',
                          style: TextStyle(
                              fontFamily: 'Voces',
                              fontSize: 15,
                              color: Colors.black),
                          textAlign: TextAlign.left),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      margin: const EdgeInsets.only(top: 5),
                      padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
                      child: const Text('Yash Chavan(Vice President)',
                          style: TextStyle(
                              fontFamily: 'Voces',
                              fontSize: 16,
                              color: Colors.black),
                          textAlign: TextAlign.left),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      margin: const EdgeInsets.only(top: 5),
                      padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
                      child: const Text('7777089810',
                          style: TextStyle(
                              fontFamily: 'Voces',
                              fontSize: 15,
                              color: Colors.black),
                          textAlign: TextAlign.left),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          bottom:
                              MediaQuery.of(context).viewInsets.bottom * 0.75),
                    ),
                    // Positioned(top: MediaQuery.of(context).size.height * 0.91,
                    //   child: Container(
                    //     width:MediaQuery.of(context).size.width,
                    //     margin: const EdgeInsets.only(top: 30),
                    //     padding: const EdgeInsets.fromLTRB(20, 5, 20, 0),
                    //     child:Text('Abhijeet Gaonkar(Sr. Treasurer)', style: TextStyle(fontFamily: 'Voces',fontSize: 16 ,color: Colors.black),textAlign: TextAlign.left),
                    //   ),),
                    // Positioned(top: MediaQuery.of(context).size.height * 0.94,
                    //   child: Container(
                    //     width:MediaQuery.of(context).size.width,
                    //     margin: const EdgeInsets.fromLTRB(40, 35, 0, 0),
                    //     //padding: const EdgeInsets.fromLTRB(20, 5, 20, 0),
                    //     child:Text('8369096455', style: TextStyle(fontFamily: 'Voces',fontSize: 15,color: Colors.black),textAlign: TextAlign.left),
                    //   ),),
                  ],
                ),
              ),
            ),
          ),
          bottomNavigationBar: BottomNavigationBar(
            backgroundColor: const Color(0xff00467F),
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.contact_phone,
                  color: Colors.white,
                ),
                label: 'Contact',
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                  color: Colors.white,
                ),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.person,
                  color: Colors.white,
                ),
                label: 'Profile',
              ),
            ],
            unselectedLabelStyle:
                const TextStyle(color: Colors.white, fontSize: 14),
            currentIndex: _selectedIndex,
            selectedItemColor: Colors.white,
            unselectedItemColor: Colors.white,
            onTap: _onItemTapped,
          ),
        ),
      );
}

Widget getImageAsset() {
  AssetImage assetImage = const AssetImage('assets/img.jpg');
  Image image = Image(
    image: assetImage,
    height: 300,
    width: 400,
    alignment: Alignment.topCenter,
  );
  return Container(
    child: image,
  );
}
