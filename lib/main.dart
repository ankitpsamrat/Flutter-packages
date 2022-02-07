// ignore_for_file: use_key_in_widget_constructors, avoid_unnecessary_containers, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
// import 'package:test/test.dart';
// import 'package:test/test1.dart';
// import 'package:test/test2.dart';
import 'package:test/test3.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, 
    // home: HomePage(),
    // home: profile(),
    // home: HomePage1(),
    home: HomePage2(),
    );
  }
}
