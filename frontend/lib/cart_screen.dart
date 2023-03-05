import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'db_helper.dart';
import 'models/cart_model.dart';
import 'package:provider/provider.dart';
import './models/format_hw.dart';
import 'main.dart';
import 'cart_provider.dart';
import 'package:url_launcher/url_launcher.dart';
class CartScreen extends StatefulWidget {
  final List<Format> hardware;
     CartScreen(this.hardware);
  //const CartScreen({ Key? key }) : super(key: key);
 
  @override
  State<CartScreen> createState() => _CartScreenState();
}
 
class _CartScreenState extends State<CartScreen> {
  DBHelper dbHelper= DBHelper();
  _launchURL1() async {
  const url = 'https://flutterdevs.com/';
  if (await canLaunchUrlString(url)) {
    await launchUrlString(url);
  } else {
    throw 'Could not launch $url';
  }
}
  @override
  Widget build(BuildContext context) {
    final cart=Provider.of<CartProvider>(context);
 
    return Scaffold(
      appBar: AppBar(
                   leading: IconButton(
              icon: Icon(Icons.arrow_back, color: Colors.black),
              onPressed: () => Navigator.of(context).pop(),
            ),
          actions: [
            Center(
              child: Badge(
                badgeContent: Consumer<CartProvider>(
                  builder: (context, value, child) {
                    return Text(value.getCounter().toString(),style: TextStyle(color: Colors.white),);
                  } ,
                   
                  ),
                animationDuration: Duration(milliseconds: 300),
                child: Icon(
                  Icons.add_shopping_cart,
                 color: Colors.black
                 ),
              ),
            ),
           
             SizedBox(width:18),
             
           ],
             backgroundColor: Colors.transparent,
             elevation: 0,
              centerTitle: true,
         
              title:  Text('My Cart',style: TextStyle(
                fontSize: 30,
                color: Colors.black,
                fontFamily: 'Ubuntu_Bold',
              ),
             
              textAlign: TextAlign.center,
            ),
           
             
          ),
      body:Column(
        children: [
          FutureBuilder(
            future: cart.getData(),
            builder: (context,AsyncSnapshot<List<Cart>> snapshot){
              if(snapshot.hasData){
                if(snapshot.data!.isEmpty){
             return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
               children: [
                Container(
                  //height: 100,
                  child: Image(
                 
                    image:AssetImage('assets/images/cart_bg.png'),
                     //fit: BoxFit.fill,
                  ),
                ),
                //SizedBox(height: 80,),
                 Container(
                  height:100 ,
                  margin: const EdgeInsets.fromLTRB(0, 0, 0, 30),
                   child: Text('Cart is empty',style: TextStyle(
                                  fontFamily: 'Voces',
                                  fontSize: 25,
                                  color: Colors.black
                                  ),
                                  ),
                 ),
               ],
             );
                }else{
                       return Expanded(
                  child: ListView.builder(
                    itemCount: snapshot.data!.length,
                    itemBuilder: (context,index){
                       return Card(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(

                            child: Column(
                              // mainAxisAlignment: MainAxisAlignment.center,
                              // crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget> [
                                Container(
                                  child: Row(
                                    // mainAxisAlignment: MainAxisAlignment.start,
                                    // crossAxisAlignment: CrossAxisAlignment.center,
                                    // mainAxisSize: MainAxisSize.max,
                                                           
                                    //image
                                    children: [
                                      Image(
                                        height: 160,
                                        width: 200,
                                        image:new AssetImage( snapshot.data![index].image.toString()) ,
                                        ),
                                        SizedBox(width: 10,),
                                        Expanded(
                                          child: Column(
                                                              //  mainAxisAlignment: MainAxisAlignment.start,
                                                              // crossAxisAlignment: CrossAxisAlignment.start,
                                                           
                                                              //productname
                                                              children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                    Container(
                                     // margin: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                                      child: Text(snapshot.data![index].productName.toString(),
                                   style: TextStyle(
                                      fontFamily: 'Voces',
                                      fontSize: 20,
                                      color: Colors.black
                                      ),
                                  ),
                                    ),
                                                           
                                    //delete button
                                  InkWell(
                                    onTap: () {
                                          dbHelper.delete(snapshot.data![index].id!);                        
                                          cart.removeCounter();
                                          //cart.removeTotalPrice(productPrice)
                                    },
                                    child: Icon(Icons.delete))
                                    ],
                                  ),
                                                               
                                  //SizedBox(height: 5,),
                                  Align(
                                    //alignment: Alignment.centerRight,
                                    child: InkWell(
                                      onTap: () {
                                                           
                                      },
                                      child: Container(
                                                              height: 30,
                                                              width: 100,
                                                              margin: const EdgeInsets.fromLTRB(10, 55, 10, 0),
                                                             // padding: EdgeInsets.fromLTRB(10, 3, 10, 0),
                                                              child: Padding(
                                  padding: const EdgeInsets.all(4.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                                           
                                      //-button
                                       InkWell(
                                        onTap: () {
                                          int quantity=snapshot.data![index].quantity!;
                                            quantity--;
                                            if(quantity>0){
                                                dbHelper.updateQuantity(
                                              Cart(id: snapshot.data![index].id!,
                                               productId: snapshot.data![index].id!.toString(),
                                                productName: snapshot.data![index].productName!,
                                                 //initialPrice: initialPrice,
                                                 //productPrice: productPrice,
                                                 quantity: quantity,
                                                 image: snapshot.data![index].image.toString()
                                                  )
                                            ).then((value) {
                                               quantity=0;
                                               
                                            }).onError((error, stackTrace) {
                                              print(error.toString());
                                            });
                                            }
                                           
                                        },
                                        child: Icon(Icons.remove,color: Colors.white,)),
                                   
                                    //quantity
                                     Text(
                                         snapshot.data![index].quantity.toString(),
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                              fontFamily: 'Voces',
                                              fontSize: 17,
                                              color: Colors.white),
                                        ),
                                                           
                                        //+button
                                         InkWell(
                                          onTap: (){
                                            int quantity=snapshot.data![index].quantity!;
                                            quantity++;
                                            dbHelper.updateQuantity(
                                              Cart(id: snapshot.data![index].id!,
                                               productId: snapshot.data![index].id!.toString(),
                                                productName: snapshot.data![index].productName!,
                                                 //initialPrice: initialPrice,
                                                 //productPrice: productPrice,
                                                 quantity: quantity,
                                                 image: snapshot.data![index].image.toString()
                                                  )
                                            ).then((value) {
                                               quantity=0;
                                               
                                            }).onError((error, stackTrace) {
                                              print(error.toString());
                                            });
                                          },
                                          child: Icon(Icons.add,color: Colors.white,)),
                                    ],
                                  ),
                                                              ),
                                                              decoration: ShapeDecoration(
                                  color: const Color(0xFFFE735D),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(7.0),
                                  ),
                                                              ),
                                                            ),
                                    ),
                                  )
                                                              ],
                                        ))
                                                           
                                    ],
                                  ),
                                ),
                                
                                
                             
                               
                               
                              ],
                              
                              
                            ),
                             
                          )
                          )
                       );
                    }
                    )
                    );

                    
                }
                
               
              }
              Widget buildBurrowButton() => ElevatedButton(
          style: ElevatedButton.styleFrom(
            primary: Color.fromARGB(255, 234, 160, 147),
            // alignment: Alignment.bottomCenter
            padding: const EdgeInsets.all(10),
           // minimumSize: const Size(52, 15),
           // maximumSize: const Size(52, 15),
            textStyle: const TextStyle(fontSize: 11),      
          ),
          onPressed: _launchURL1,
          child: const Text('Burrow',
           style: TextStyle(
          //                       fontFamily: 'Ubuntu',
          //                       fontSize: 17,
                                 color: Color.fromARGB(255, 0, 0, 0)),
                                ),
         
        );
           return Text('');
            })
        ],
      )
     
    );
  }

  launchUrlString(String url) {}

  canLaunchUrlString(String url) {}
}
 

