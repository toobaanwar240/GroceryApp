// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

class TrackOrder extends StatelessWidget {
  @override
  Widget build(context) {
    return Scaffold(
        appBar: AppBar(
            title: Text(
          "Track Order",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        )),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Container(
                height: 300,
                width: 400,
                child: Image(
                  image: NetworkImage(
                      "https://www.locate2u.com/wp-content/uploads/software-design.png"),
                  fit: BoxFit.fill,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: 90,
                  height: 10,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(12)),
                      color: const Color.fromARGB(255, 200, 199, 199)),
                ),
              ),
              Row(
                children: [
                  Padding(padding: EdgeInsets.only(left: 8.0)),
                  Text(
                    "on my way",
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                  Spacer(),
                  Padding(
                    padding: const EdgeInsets.only(left: 50.0),
                    child: Container(
                      height: 60,
                      width: 90,
                      child: Row(
                        children: [
                          Icon(
                            Icons.timelapse,
                            color: Colors.green,
                          ),
                          Text("10 min"),
                        ],
                      ),
                    ),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      Text(
                        "Order Placed",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.green),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          width: 90,
                          height: 10,
                          decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(12)),
                              color: Colors.green),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Text(
                        "On the Way",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 163, 221, 165)),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                            width: 90,
                            height: 10,
                            decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(12)),
                              color: const Color.fromARGB(255, 163, 221, 165),
                            )),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Text(
                        "Delivered",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: const Color.fromARGB(255, 207, 203, 203)),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                            width: 90,
                            height: 10,
                            decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(12)),
                              color: const Color.fromARGB(255, 207, 203, 203),
                            )),
                      ),
                    ],
                  )
                ],
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(
                      Icons.person_4_rounded,
                      color: Colors.green,
                      size: 50,
                    ),
                  ),
                  Column(
                    children: [
                      Text(
                        "Your delivery hero",
                        style: TextStyle(
                            color: const Color.fromARGB(255, 188, 186, 186)),
                      ),
                      Text(
                        "AbdulMalik Qasim",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                  Spacer(),
                  Icon(Icons.message_rounded, color: Colors.green, size: 30),
                  SizedBox(
                    width: 8.0,
                  ),
                  Icon(Icons.call, color: Colors.green, size: 30),
                  Padding(padding: EdgeInsets.only(right: 8.0))
                ],
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(
                      Icons.circle_outlined,
                      size: 30,
                      color: Colors.red,
                    ),
                  ),
                  Column(
                    children: [
                      Text(
                        "Store",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: const Color.fromARGB(255, 188, 186, 186)),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Text(
                        "Insta Grocery Store",
                        style: TextStyle(
                            fontSize: 17, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ],
              ),
              Padding(padding: EdgeInsets.only(top: 20)),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(
                      Icons.location_history,
                      size: 30,
                      color: Colors.green,
                    ),
                  ),
                  Column(
                    children: [
                      Text(
                        "Your place",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: const Color.fromARGB(255, 188, 186, 186)),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Text(
                        "Queens Road London",
                        style: TextStyle(
                            fontSize: 17, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ],
              ),
              Padding(padding: EdgeInsets.only(bottom: 10))
            ],
          ),
        ));
  }
}
