import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedPreference extends StatefulWidget {
  const SharedPreference({super.key});

  @override
  State<SharedPreference> createState() => _SharedPreferenceState();
}

class _SharedPreferenceState extends State<SharedPreference> {
  //  text controller

  final controller = TextEditingController();

  //  save data method

  saveData(String text) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString('text', text);
  }

  //  read save data mehtod

  readData() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String? savedData = prefs.getString('text');
    if (savedData != null) {
      controller.text = savedData;
    }
  }

  @override
  void initState() {
    readData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Shared preference implimentation'),
        elevation: 0,
      ),
      body: TextField(
        controller: controller,
        onChanged: (value) {
          saveData(value);
        },
      ),
    );
  }
}
