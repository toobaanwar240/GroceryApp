// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:groceryapp/Cart.dart';
import 'package:groceryapp/Lists.dart';
import 'package:groceryapp/Vegetables.dart';

class Product extends StatefulWidget {
  String image;
  String title;
  String description;
  String prices;
  Product(
      {required this.image,
      required this.title,
      required this.description,
      required this.prices});
  @override
  ProductState createState() => ProductState();
}

class ProductState extends State<Product> {
  int nooftimes = 0;
  @override
  Widget build(context) {
    return Scaffold(
        appBar: AppBar(
          title: Padding(
              padding: EdgeInsets.only(left: 240),
              child: Icon(
                Icons.search,
                size: 30,
                color: Colors.green,
              )),
        ),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Padding(
              padding: EdgeInsets.only(top: 15),
              child: Column(
                children: [
                  Container(
                      height: 300,
                      width: 400,
                      child: Image(
                        image: NetworkImage(widget.image),
                        fit: BoxFit.fill,
                      )),
                  Padding(padding: EdgeInsets.only(top: 10, left: 10)),
                  Row(
                    children: [
                      Padding(padding: EdgeInsets.only(left: 8.0)),
                      Text(widget.title,
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold)),
                      Spacer(),
                      Padding(
                          padding: EdgeInsets.only(right: 30),
                          child: GestureDetector(
                              onTap: () {
                                setState(() {
                                  nooftimes--;
                                });
                              },
                              child: Icon(
                                Icons.remove_circle,
                                size: 40,
                                color: Colors.grey,
                              ))),
                      Padding(
                        padding: EdgeInsets.only(right: 30),
                        child: Text(
                          nooftimes.toString(),
                          style: TextStyle(
                              fontSize: 30, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Padding(
                          padding: EdgeInsets.only(right: 5),
                          child: GestureDetector(
                              onTap: () {
                                setState(() {
                                  nooftimes++;
                                });
                              },
                              child: Container(
                                  height: 50,
                                  width: 50,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(50),
                                      color: Colors.green),
                                  child: Icon(
                                    Icons.add,
                                    size: 30,
                                    color: Colors.white,
                                  )))),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 5, right: 230),
                    child: Text(
                      widget.prices,
                      style: TextStyle(
                          color: Colors.red,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 10, left: 5.0),
                    child: Text(widget.description),
                  ),
                  Padding(padding: EdgeInsets.only(top: 10)),
                  Image(image: AssetImage("assets/Frame 37000.png")),
                  Padding(padding: EdgeInsets.only(top: 10)),
                  Center(
                    child: ElevatedButton(
                        onPressed: () {
                          Navigator.of(context).push(
                              MaterialPageRoute(builder: (context) => Cart()));
                        },
                        style: ElevatedButton.styleFrom(
                            backgroundColor:
                                Colors.green, // Set the background color
                            foregroundColor: Colors.white, // Set the text color
                            fixedSize: Size(300, 60)),
                        child: Text("Add to Cart",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold))),
                  ),
                  Padding(padding: EdgeInsets.only(bottom: 8.0))
                ],
              )),
        ));
  }
}
