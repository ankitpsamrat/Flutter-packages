// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, avoid_unnecessary_containers, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

// void main() {
//   runApp(MaterialApp(
//     title: "hello",
//     home: HomePage(),
//   ));
// }

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Hello App"),
        ),
        body: Center(
          child: Container(
            padding: const EdgeInsets.all(8),
            alignment: Alignment.center,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                boxShadow: [BoxShadow(color: Colors.grey, blurRadius: 5)],
                color: Colors.teal,
                gradient: LinearGradient(colors: [Colors.yellow, Colors.pink])),
            width: 100,
            height: 100,
            child: Text("Samrat",
                style: TextStyle(
                    color: Colors.white, fontWeight: FontWeight.bold)),
          ),
        ));
  }
}
