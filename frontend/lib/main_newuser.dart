import 'package:flutter/material.dart';
import 'email_n_members.dart';
import 'otp_n_members.dart';
import 'newuser_email.dart';

// void main() => runApp(newuser());

class newuser extends StatelessWidget {
 

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: 'Voces',
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  
 

  @override
 Widget build(BuildContext context) => GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: Scaffold(
          backgroundColor: Color(0xFFFFFFFF),
          body: SingleChildScrollView(
            child: Container(
              height: MediaQuery.of(context).size.height,
              width: double.infinity,
              child: Stack(
                alignment: Alignment.center,
                children: <Widget>[
                  // FIRST GIF PAGE KA
                  Positioned(
                    top: MediaQuery.of(context).size.height * 0.2,
                    child: Image.asset(
                      'assets/images/newuser.png',
                      width: MediaQuery.of(context).size.width * 1,
                    ),
                  ),


                  Positioned(
                    top: MediaQuery.of(context).size.height * 0.73,
                    
                    
                    child: Column(
  mainAxisAlignment: MainAxisAlignment.end,

  children: [
    
    SizedBox(width: 10),
    ElevatedButton(
      child: Text(
        "New User",
        style: TextStyle(fontSize: 18)
      ),
          style: ElevatedButton.styleFrom(
                        primary: Color(0xFF00467F),
                        padding:
                            EdgeInsets.symmetric(horizontal: 140, vertical: 10),
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(3.0),
                        ),
                      ),
      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => newuser_email()),
                        );
                      },
    ),


    Container(
      padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
      child: TextButton(
        
        child: Text(
          "    Login   ",
          style: TextStyle(fontSize: 18)
        ),
        style: ButtonStyle(
          padding: MaterialStateProperty.all<EdgeInsets>(EdgeInsets.symmetric(horizontal: 140, vertical: 10),),        
          foregroundColor: MaterialStateProperty.all<Color>(Color(0xFF00467F),),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(3.0),
              side: BorderSide(color: Color(0xFF00467F),)
            )
          )
        ),

 
        onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => email_n_members()),
                        );
                      },
      ),
    ),
  ]
),),
                  
                  // UPAR KA ANIMATION
                  Positioned(
                    top: 0,
                    right: 0,
                    child: Image.asset(
                      'assets/images/Surfer-unscreen.gif',
                      width: MediaQuery.of(context).size.width * 0.45,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ); 
 
}
