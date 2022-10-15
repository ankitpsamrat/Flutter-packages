import 'package:flutter/material.dart';
import 'package:test/screens/share_preference_method.dart';
// import 'package:test/about.dart';
// import 'package:test/test.dart';
// import 'package:test/test1.dart';
// import 'package:test/test2.dart';
// import 'package:test/test3.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: HomePage(),
      // home: profile(),
      // home: HomePage1(),
      // home: HomePage2(),
      // home: About(),
      // home: TopSkills(),
      home: SharePreference(),
    );
  }
}
