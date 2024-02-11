// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:groceryapp/Vegetables.dart';

class CommonContainers extends StatelessWidget {
  String image;
  CommonContainers({required this.image});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
          height: 100,
          width: 100,
          decoration: BoxDecoration(
              border: Border.all(color: Colors.white),
              borderRadius: BorderRadius.all(Radius.circular(20))),
          child: Image(
            image: (AssetImage(image)),
            fit: BoxFit.fill,
          )),
    );
  }
}

class MyContainers extends StatefulWidget {
  
  String title;
  String subtitle;
  MyContainers(
      { required this.title, required this.subtitle});
  @override
  ContainerState createState() => ContainerState();
}

class ContainerState extends State<MyContainers> {
  int nooftimes = 0;
  @override
  Widget build(context) {
    return Row(children: [
      Padding(padding: EdgeInsets.only(left: 10)),
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(widget.title,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
          Text(
            widget.subtitle,
            style: TextStyle(
                fontSize: 15, fontWeight: FontWeight.bold, color: Colors.red),
          )
        ],
      ),
      Spacer(),
      Padding(
        padding: const EdgeInsets.only(right: 10.0),
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
            )),
      ),
      Padding(
        padding: EdgeInsets.only(left: 5.0, right: 10.0),
        child: Text(
          nooftimes.toString(),
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
        ),
      ),
      Padding(
          padding: EdgeInsets.only(right: 5.0),
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
    ]);
  }
}
