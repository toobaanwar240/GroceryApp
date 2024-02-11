// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:groceryapp/CommonContainers.dart';

import 'package:groceryapp/Lists.dart';
import 'package:groceryapp/ProductState.dart';

class Vegetables extends StatelessWidget {
  @override
  Widget build(context) {
    return Scaffold(
        appBar: AppBar(
            title: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 65.0),
              child: Text(
                "vegetables",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 95.0),
              child: Icon(
                Icons.search,
                size: 30,
                color: Colors.green,
              ),
            )
          ],
        )),
        body: GridView.builder(
            itemCount: 8,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 4.0,
                crossAxisSpacing: 4.0,
                childAspectRatio: 0.6),
            itemBuilder: (context, index) {
              return GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => Product(
                            image: Vegimages[index],
                            title: vegetablesNames[index],
                            description: descript[index],
                            prices: prices[index])));
                  },
                  child: CommonContainers(image: AssetsImages[index]));
            }));
  }
}
