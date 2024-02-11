// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:groceryapp/CommonContainers.dart';
import 'package:groceryapp/Lists.dart';
import 'package:groceryapp/ProductState.dart';
import 'package:groceryapp/TrackOrder.dart';

class Cart extends StatelessWidget {
  int nooftimes = 0;
  final List<int> includedIndices = [1, 2, 3, 6];
  @override
  Widget build(context) {
    return Scaffold(
        appBar: AppBar(
            title: Text("Cart",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold))),
        body: Column(
          children: [
            Expanded(
              child: ListView.separated(
                  itemBuilder: (context, index) {
                    final includedIndex = includedIndices[index];
                    return Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: MyContainers(
                          title: vegetablesNames[includedIndex],
                          subtitle: prices[includedIndex]),
                    );
                  },
                  separatorBuilder: (context, index) {
                    return Divider(
                      height: 16,
                      thickness: 2,
                    );
                  },
                  itemCount: includedIndices.length),
            ),
            Center(
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (context) => TrackOrder()));
                  },
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green, // Set the background color
                      foregroundColor: Colors.white, // Set the text color
                      fixedSize: Size(300, 60)),
                  child: Text("Check out",
                      style: TextStyle(
                          fontSize: 20, fontWeight: FontWeight.bold))),
            ),
            Padding(padding: EdgeInsets.only(bottom: 8.0))
          ],
        ));
  }
}
