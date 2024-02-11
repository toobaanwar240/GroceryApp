// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:groceryapp/HomePage.dart';
import 'package:groceryapp/LoginPage.dart';
import 'package:groceryapp/main.dart';

class IntroPage extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(252, 232, 228, 228),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.only(right: 310, top: 8.0),
                child: Container(
                  child: InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => MyHomePage()));
                      },
                      child: Icon(Icons.arrow_back, size: 30)),
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 205, 204, 204),
                      borderRadius: BorderRadius.circular(12)),
                ),
              ),
              Container(
                height: 100,
                width: 100,
                //color: Colors.grey,
                child: Image(image: AssetImage("assets/Group 1.png")),
                // margin: EdgeInsets.only(left: 0),
              ),
              Text(
                " Get your groceries",
                style: TextStyle(
                    fontSize: 25,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                " delivered to your home",
                style: TextStyle(
                    fontSize: 25,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              ),
              Padding(padding: EdgeInsets.only(top: 20)),
              Text(" The best delivery app in town for ",
                  style: TextStyle(fontSize: 17, color: Colors.grey)),
              Text(" delivering your daily fresh groceries ",
                  style: TextStyle(fontSize: 17, color: Colors.grey)),
              SizedBox(
                height: 30,
                width: 30,
              ),
              Center(
                  child: ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => LoginPage()));
                      },
                      style: ElevatedButton.styleFrom(
                          backgroundColor:
                              Colors.green, // Set the background color
                          foregroundColor: Colors.white, // Set the text color
                          fixedSize: Size(200, 60)),
                      child: Text(
                        "Shop now",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ))),
              Padding(padding: EdgeInsets.only(top: 40)),
              Container(
                height: 284,
                width: 900,
                //color: Colors.amber,
                child: Image(
                  image: AssetImage("assets/Frame 1.png"),
                  fit: BoxFit.fill,
                ),
              )
            ],
          ),
        ));
  }
}
