// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, avoid_unnecessary_containers, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

// void main() {
//   runApp(MaterialApp(
//     title: "hello",
//     home: HomePage1(),
//   ));
// }

class HomePage1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Hello App"),
        ),
        body: Container(
          color: Colors.black,
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Column(
            // row me dekhane ke liye column ki jagah row likhenge
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Container(
                padding: const EdgeInsets.all(8),
                width: 100,
                height: 100,
                color: Colors.red,
              ),
              Container(
                padding: const EdgeInsets.all(8),
                width: 100,
                height: 100,
                color: Colors.green,
              ),
              Container(
                padding: const EdgeInsets.all(8),
                width: 100,
                height: 100,
                color: Colors.yellow,
              ),
            ],
          ),
        ));
  }
}
