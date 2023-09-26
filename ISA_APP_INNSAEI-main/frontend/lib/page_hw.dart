import 'package:flip_card/flip_card.dart';

import 'hw_detail.dart';

import 'package:flutter/material.dart';
import './models/format_hw.dart';

class page_hw extends StatefulWidget {
  final List<Format> inventory;
  final String access;

  const page_hw(this.inventory, this.access, {Key? key}) : super(key: key);

  @override
  State<page_hw> createState() => _page_hwState();
}

class _page_hwState extends State<page_hw> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        margin: const EdgeInsets.fromLTRB(0, 15, 0, 10),
        child: ListView.builder(
          padding: const EdgeInsets.only(bottom: 0),
          itemBuilder: (ctx, index) {
            if (index % 2 == 0) {
              return Card(
                elevation: 0,
                color: Colors.transparent,
                margin: const EdgeInsets.fromLTRB(0, 15, 0, 10),
                child: FlipCard(
                  direction: FlipDirection.HORIZONTAL,
                  front: Container(
                    margin: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                    padding: const EdgeInsets.fromLTRB(20, 0, 10, 0),
                    height: 150,
                    width: 350,
                    decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(5)),
                        gradient: LinearGradient(
                            colors: [Color(0xFF00467f), Colors.white],
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey,
                            blurRadius: 10,
                            offset: Offset(0, 6),
                          )
                        ]),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        SizedBox(
                          height: 100,
                          width: 100,
                          child: InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => hw_detail(
                                    widget.access,
                                    widget.inventory[index].id,
                                    widget.inventory[index].name,
                                    widget.inventory[index].image,
                                    widget.inventory[index].Small_Specs,
                                    widget.inventory[index].Info,
                                  ),
                                ),
                              );
                            },
                            child: Image.network(
                              widget.inventory[index].image!,
                              alignment: FractionalOffset.topCenter,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 50,
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width * 0.4,
                          margin: const EdgeInsets.fromLTRB(0, 0, 0, 10),
                          padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                          child: InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => hw_detail(
                                    widget.access,
                                    widget.inventory[index].id,
                                    widget.inventory[index].name,
                                    widget.inventory[index].image,
                                    widget.inventory[index].Small_Specs,
                                    widget.inventory[index].Info,
                                  ),
                                ),
                              );
                            },
                            child: Text(
                              widget.inventory[index].name!.toString(),
                              maxLines: 4,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.start,
                              style: const TextStyle(
                                  fontFamily: 'Voces',
                                  fontSize: 16,
                                  color: Colors.black),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  back: Container(
                      margin: const EdgeInsets.fromLTRB(20, 30, 20, 0),
                      padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                      height: 150,
                      width: 350,
                      decoration: BoxDecoration(
                          borderRadius: const BorderRadius.all(Radius.circular(5)),
                          color: const Color(0xFF00467f).withOpacity(0.9),
                          boxShadow: const [
                            BoxShadow(
                              color: Colors.grey,
                              blurRadius: 10,
                              offset: Offset(0, 6),
                            )
                          ]),
                      child: widget.inventory[index].name!.toString() == "true"
                          ? const Center(
                              child: Text(
                                "Not Available",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontFamily: 'Voces',
                                    fontSize: 25,
                                    color: Colors.white),
                              ),
                            )
                          : const Center(
                              child: Text(
                                "Available",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontFamily: 'Voces',
                                    fontSize: 25,
                                    color: Colors.white),
                              ),
                            )),
                ),
              );
            } else {
              return Card(
                elevation: 0,
                color: Colors.transparent,
                margin: const EdgeInsets.fromLTRB(0, 15, 0, 10),
                child: FlipCard(
                  direction: FlipDirection.HORIZONTAL,
                  front: Container(
                    margin: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                    padding: const EdgeInsets.fromLTRB(20, 0, 10, 0),
                    height: 150,
                    width: 350,
                    decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(5)),
                        gradient: LinearGradient(
                            colors: [Color(0xFFFE735D), Colors.white],
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey,
                            blurRadius: 10,
                            offset: Offset(0, 6),
                          )
                        ]),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        SizedBox(
                          height: 100,
                          width: 100,
                          child: InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => hw_detail(
                                    widget.access,
                                    widget.inventory[index].id,
                                    widget.inventory[index].name,
                                    widget.inventory[index].image,
                                    widget.inventory[index].Small_Specs,
                                    widget.inventory[index].Info,
                                  ),
                                ),
                              );
                            },
                            child: Image.network(
                              widget.inventory[index].image!,
                              alignment: FractionalOffset.topCenter,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 50,
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width * 0.4,
                          margin: const EdgeInsets.fromLTRB(0, 0, 0, 10),
                          padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                          child: InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => hw_detail(
                                    widget.access,
                                    widget.inventory[index].id,
                                    widget.inventory[index].name,
                                    widget.inventory[index].image,
                                    widget.inventory[index].Small_Specs,
                                    widget.inventory[index].Info,
                                  ),
                                ),
                              );
                            },
                            child: Text(
                              widget.inventory[index].name!.toString(),
                              textAlign: TextAlign.start,
                              style: const TextStyle(
                                  fontFamily: 'Voces',
                                  fontSize: 16,
                                  color: Colors.black),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  back: Container(
                      margin: const EdgeInsets.fromLTRB(20, 30, 20, 0),
                      padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                      height: 150,
                      width: 350,
                      decoration: BoxDecoration(
                          borderRadius: const BorderRadius.all(Radius.circular(5)),
                          color: const Color(0xFFFE735D).withOpacity(0.9),
                          boxShadow: const [
                            BoxShadow(
                              color: Colors.grey,
                              blurRadius: 10,
                              offset: Offset(0, 6),
                            )
                          ]),
                      child: widget.inventory[index].name!.toString() == "true"
                          ? const Center(
                              child: Text(
                                "Not Available",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontFamily: 'Voces',
                                    fontSize: 25,
                                    color: Colors.white),
                              ),
                            )
                          : const Center(
                              child: Text(
                                "Available",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontFamily: 'Voces',
                                    fontSize: 25,
                                    color: Colors.white),
                              ),
                            )),
                ),
              );
            }
          },
          itemCount: widget.inventory.length,
        ),
      ),
    );
  }
}
