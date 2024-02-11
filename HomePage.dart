// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:groceryapp/CommonContainers.dart';
import 'package:groceryapp/LoginPage.dart';
import 'package:groceryapp/Vegetables.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(251, 247, 243, 243),
        appBar: AppBar(
            title: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Image(
            image: AssetImage("assets/Frame 14.png"),
          ),
        )),
        body: ClipRect(
          child: InteractiveViewer(
            scaleEnabled: true,
            child: Column(
              children: [
                Padding(
                    padding: EdgeInsets.only(top: 10.0, right: 30),
                    child: Container(
                        height: 40,
                        width: 300,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(color: Colors.white),
                            color: Colors.white),
                        margin: EdgeInsets.only(left: 40),
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Icon(
                                Icons.search,
                                size: 20,
                                color: Colors.green,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                "Select category",
                                style: TextStyle(
                                    fontSize: 17,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.grey),
                              ),
                            ),
                          ],
                        ))),
                Padding(padding: EdgeInsets.only(top: 10)),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Container(
                          child: Image(
                        image: AssetImage("assets/Group 36777.png"),
                      )),
                      Padding(padding: EdgeInsets.only(left: 10)),
                      Container(
                          child: Image(
                        image: AssetImage("assets/Group 36777.png"),
                      )),
                      Padding(padding: EdgeInsets.only(left: 10)),
                      Container(
                          child: Image(
                        image: AssetImage("assets/Group 36777.png"),
                      ))
                    ],
                  ),
                ),
                Padding(padding: EdgeInsets.only(top: 10)),
                Row(children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 15.0),
                    child: Text(
                      "Categories",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Padding(padding: EdgeInsets.only(left: 8.0)),
                  Icon(
                    Icons.face,
                    color: Colors.amber,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => Vegetables()));
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(left: 150.0),
                      child: Text(
                        "See all",
                        style: TextStyle(
                            color: Colors.green,
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      ),
                    ),
                  )
                ]),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      CommonContainers(image: "assets/Apple.png"),
                      CommonContainers(image: "assets/broccli.png"),
                      CommonContainers(image: "assets/cheese.png"),
                      CommonContainers(image: "assets/meat.png"),
                      CommonContainers(image: "assets/broccli.png"),
                    ],
                  ),
                ),
                Padding(padding: EdgeInsets.only(top: 10)),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10.0),
                      child: Text(
                        "Best sellings",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: Icon(Icons.data_exploration_rounded,
                          color: Colors.orange, size: 25),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => Vegetables()));
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(left: 140.0),
                        child: Text(
                          "See all",
                          style: TextStyle(
                              color: Colors.green,
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
                        ),
                      ),
                    )
                  ],
                ),
                Flexible(
                    child: GridView.count(
                  crossAxisCount: 2,
                  children: [
                    CommonContainers(image: "assets/Group 36993.png"),
                    CommonContainers(image: "assets/Group 36994.png"),
                    CommonContainers(image: "assets/Group 36993.png"),
                    CommonContainers(image: "assets/Group 36993.png"),
                  ],
                )),
                Row(children: [
                  Padding(padding: EdgeInsets.only(left: 15)),
                  InkWell(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => LoginPage()));
                      },
                      child: Icon(Icons.arrow_back_ios_new_outlined, size: 20)),
                  Padding(padding: EdgeInsets.only(left: 100)),
                  Icon(Icons.home_filled),
                  Padding(padding: EdgeInsets.only(left: 5)),
                  Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.all(Radius.circular(50))),
                    child: Icon(
                      Icons.shopping_bag_sharp,
                      size: 20,
                      color: Colors.white,
                    ),
                  ),
                  Padding(padding: EdgeInsets.only(left: 5)),
                  Icon(Icons.card_giftcard_outlined),
                  Padding(
                      padding: EdgeInsets.only(left: 105),
                      child: Icon(
                        Icons.person,
                        size: 20,
                        color: Colors.grey,
                      )),
                ]),
              ],
            ),
          ),
        ));
  }
}
