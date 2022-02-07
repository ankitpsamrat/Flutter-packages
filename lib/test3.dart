// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, avoid_unnecessary_containers, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: "hello",
    home: HomePage(),
    theme: ThemeData(primarySwatch: Colors.purple),
  ));
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text("Hello App"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Card(
            child: Column(
              children: [
                Image.asset(
                  "images/bg.jfif",
                  fit: BoxFit.cover,
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Change me",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.all(16),
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: "Input somthings",
                      labelText: "Name",
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            UserAccountsDrawerHeader(
              accountName: Text("Ankit Pratap Samrat"),
              accountEmail: Text("ankit.p.samrat@gmail.com"),
              currentAccountPicture: Image.asset('images/mypic.png'),
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text("ABOUT"),
              subtitle: Text("User"),
              trailing: Icon(Icons.edit),
            ),
            ListTile(
              leading: Icon(Icons.email),
              title: Text("ankit.p.samrat@gmail.com"),
              // subtitle: Text("User"),
              trailing: Icon(Icons.send),
            ),
            ListTile(
              leading: Icon(Icons.phone),
              title: Text("+91 7523878181"),
              // subtitle: Text("User"),
              trailing: Icon(Icons.call),
            ),
          ],
        ),
      ),

      // floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat, // button location set
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.edit),
        // child: Icon(Icons.refresh), // refresh icon set krne ke liye
        // mini: true, // botton ko chota rakhane ke liye
      ),
    );
  }
}
