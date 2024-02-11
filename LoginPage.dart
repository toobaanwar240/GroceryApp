// ignore_for_file: prefer_const_constructors, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:groceryapp/HomePage.dart';
import 'package:groceryapp/IntroPage.dart';

class LoginPage extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ClipRRect(
      child: InteractiveViewer(
        scaleEnabled: true,
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(left: 8.0, top: 8.0),
              child: Container(
                child: InkWell(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => IntroPage()));
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
              child: Image(
                image: AssetImage("assets/Group 1.png"),
              ),
              margin: EdgeInsets.only(left: 130),
            ),
            Padding(
              padding: EdgeInsets.only(left: 70),
              child: Text(
                "Enter your Mobile ",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 130),
              child: Text(
                "Number ",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 70),
              child: Text(
                "We will send you  verification number",
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 12),
              child: Center(
                child: Container(
                  width: 300,
                  child: TextField(
                    decoration: InputDecoration(
                        prefixText: "+44 ",
                        prefixStyle: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                        hintStyle: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: const Color.fromARGB(255, 194, 193, 193)),
                        hintText: "  (000)000-00-00"),
                  ),
                ),
              ),
            ),
            Padding(padding: EdgeInsets.only(top: 20.0)),
            Center(
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => HomePage()));
                  },
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green, // Set the background color
                      foregroundColor: Colors.white, // Set the text color
                      fixedSize: Size(200, 60)),
                  child: Text("Continue",
                      style: TextStyle(
                          fontSize: 20, fontWeight: FontWeight.bold))),
            ),
            Padding(padding: EdgeInsets.only(top: 10)),
            Center(
              child: Text(
                "By clicking on 'Continue' you are agreeing to ",
                style: TextStyle(
                    fontSize: 13,
                    color: const Color.fromARGB(255, 177, 176, 176)),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  " our ",
                  style: TextStyle(
                      fontSize: 13,
                      color: const Color.fromARGB(255, 177, 176, 176)),
                ),
                Text("terms of use",
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        decoration: TextDecoration.underline)),
              ],
            ),
            Padding(padding: EdgeInsets.only(top: 13)),
            InkWell(
              onTap: () {},
              child: Container(
                child: Image(
                    image: AssetImage("assets/Group 36773.png"),
                    fit: BoxFit.fill),
                height: 205,
                width: 500,
              ),
            )
          ],
        ),
      ),
    ));
  }
}
