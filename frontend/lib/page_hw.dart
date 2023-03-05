import 'models/cart_model.dart';
import 'hw_detail.dart';
import 'main.dart';
import 'db_helper.dart';
import 'cart_provider.dart';
import 'package:flutter/material.dart';
import './models/format_hw.dart';
import 'package:provider/provider.dart';
import 'package:path_provider/path_provider.dart';
import 'package:badges/badges.dart';

class page_hw extends StatefulWidget {
  final List<Format> hardware;
  page_hw(this.hardware);

  @override
  State<page_hw> createState() => _page_hwState();
}

class _page_hwState extends State<page_hw> {
  DBHelper? dbHelper = DBHelper();
  //hardware list
  final List<Format> hardware = [
    Format(
      id: '1',
      image: 'assets/images/2.jpg',
      name: 'a',
      small_desc: 'xxxxxxxxxxxxxx',
      info:
          'Lorem ipsum dolor sit amet consectetur adipiscing elit semper facilisis ultricies, lectus nulla senectus volutpat magna scelerisque feugiat accumsan curae.',
      //price: 100,
    ),
    Format(
      id: '2',
      image: 'assets/images/1.jpg',
      name: 'b',
      small_desc: 'yyyyyyyyyyyyyyy',
      info:
          'Lorem ipsum dolor sit amet consectetur adipiscing elit semper facilisis ultricies, lectus nulla senectus volutpat magna scelerisque feugiat accumsan curae.',
      // price: 100,
    ),
    Format(
      id: '3',
      image: 'assets/images/2.jpg',
      name: 'c',
      small_desc: 'xxxxxxxxxxxxxx',
      info:
          'Lorem ipsum dolor sit amet consectetur adipiscing elit semper facilisis ultricies, lectus nulla senectus volutpat magna scelerisque feugiat accumsan curae.',
      // price: 100,
    ),
    Format(
      id: '4',
      image: 'assets/images/2.jpg',
      name: 'd',
      small_desc: 'xxxxxxxxxxxxxx',
      info:
          'Lorem ipsum dolor sit amet consectetur adipiscing elit semper facilisis ultricies, lectus nulla senectus volutpat magna scelerisque feugiat accumsan curae.',
      //price: 100,
    ),
    Format(
      id: '5',
      image: 'assets/images/2.jpg',
      name: 'e',
      small_desc: 'xxxxxxxxxxxxxx',
      info:
          'Lorem ipsum dolor sit amet consectetur adipiscing elit semper facilisis ultricies, lectus nulla senectus volutpat magna scelerisque feugiat accumsan curae.',
      // price: 100,
    ),
    Format(
      id: '6',
      image: 'assets/images/2.jpg',
      name: 'f',
      small_desc: 'xxxxxxxxxxxxxx',
      info:
          'Lorem ipsum dolor sit amet consectetur adipiscing elit semper facilisis ultricies, lectus nulla senectus volutpat magna scelerisque feugiat accumsan curae.',
      // price: 100,
    ),
    Format(
      id: '7',
      image: 'assets/images/2.jpg',
      name: 'g',
      small_desc: 'xxxxxxxxxxxxxx',
      info:
          'Lorem ipsum dolor sit amet consectetur adipiscing elit semper facilisis ultricies, lectus nulla senectus volutpat magna scelerisque feugiat accumsan curae.',
      // price: 100,
    ),
    Format(
      id: '8',
      image: 'assets/images/2.jpg',
      name: 'h',
      small_desc: 'xxxxxxxxxxxxxx',
      info:
          'Lorem ipsum dolor sit amet consectetur adipiscing elit semper facilisis ultricies, lectus nulla senectus volutpat magna scelerisque feugiat accumsan curae.',
      //price: 100,
    ),
    Format(
      id: '9',
      image: 'assets/images/2.jpg',
      name: 'i',
      small_desc: 'xxxxxxxxxxxxxx',
      info:
          'Lorem ipsum dolor sit amet consectetur adipiscing elit semper facilisis ultricies, lectus nulla senectus volutpat magna scelerisque feugiat accumsan curae.',
      // price: 100,
    ),
    Format(
      id: '10',
      image: 'assets/images/2.jpg',
      name: 'j',
      small_desc: 'xxxxxxxxxxxxxx',
      info:
          'Lorem ipsum dolor sit amet consectetur adipiscing elit semper facilisis ultricies, lectus nulla senectus volutpat magna scelerisque feugiat accumsan curae.',
      // price: 100,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    final cart = Provider.of<CartProvider>(context);
    Size size = MediaQuery.of(context).size;
    return Container(
// Flexible(
// child:Column(
      child: GridView.count(
        // Create a grid with 2 columns.
        crossAxisCount: 2,
        crossAxisSpacing: 1,
        mainAxisSpacing: 5,

        // Generate 6 widgets that display their content in the List.
        children: List.generate(10, (index) {
          return Container(
              child: Stack(alignment: Alignment.center, children: <Widget>[
            //shadow white container
            Positioned(
              child: Container(
                height: 180,
                width: 175,
                decoration: BoxDecoration(color: Colors.white, boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.5),
                    //spreadRadius: 1,
                    blurRadius: 4,
                    offset: Offset(4.0, 4.0),
                  ),
                ]),
              ),
            ),

            //image
            Positioned(
              child: Container(
                height: 150,
                width: 150,
                margin: const EdgeInsets.fromLTRB(0, 25, 0, 90),
                child: InkWell(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => hw_detail(
                              Hw_dataModel: hardware[index],
                            )));
                  },
                  child: Image(
                    image: new AssetImage(widget.hardware[index].image),
                    fit: BoxFit.cover,
                    //alignment: FractionalOffset.topCenter,
                  ),
                ),
              ),
            ),

            //name
            Positioned(
              child: Container(
                margin: const EdgeInsets.fromLTRB(20, 50, 20, 0),
                child: Text(
                  widget.hardware[index].name,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontFamily: 'Voces', fontSize: 20, color: Colors.black),
                ),
              ),
            ),

            //add to cart rectangle
            
            Positioned(
              // child: InkWell(
              //   onTap: () {
              //     dbHelper!
              //         .insert(Cart(
              //       id: index,
              //       productId: index.toString(),
              //       productName: widget.hardware[index].name,
              //       //  initialPrice: widget.hardware[index].price,
              //       //   productPrice:widget.hardware[index].price,
              //       quantity: 1,
              //       image: widget.hardware[index].image,
              //     ))
              //         .then((value) {
              //       print('Product is added to cart');
              //       //cart.addTotalPrice(double.parse(widget.hardware[index].price.toString()));
              //       cart.addCounter();
              //     }).onError((error, stackTrace) {
              //       print('Product is already added to cart');
              //     });
              //   },
                child: Container(
                  height: 30,
                  width: 100,
                  margin: const EdgeInsets.fromLTRB(10, 120, 10, 0),
                  padding: EdgeInsets.fromLTRB(10, 3, 10, 0),
                  decoration: ShapeDecoration(
                    color: const Color(0xFFFE735D),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(7.0),
                    ),
                  ),
                  child: InkWell(
                onTap: () {
                  dbHelper!
                      .insert(Cart(
                    id: index,
                    productId: index.toString(),
                    productName: widget.hardware[index].name,
                    //  initialPrice: widget.hardware[index].price,
                    //   productPrice:widget.hardware[index].price,
                    quantity: 1,
                    image: widget.hardware[index].image,
                  ))
                      .then((value) {
                    print('Product is added to cart');
                    //cart.addTotalPrice(double.parse(widget.hardware[index].price.toString()));
                    cart.addCounter();
                  }).onError((error, stackTrace) {
                    print('Product is already added to cart');
                  });
                },
                  
                  child: Text(
                    'Add',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontFamily: 'Voces', fontSize: 17, color: Colors.white),
                  ),
                  
                ),
              ),
            ),


          ]));
        }),
      ),
    );
  }
}
