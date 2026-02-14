import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class HttpPackage extends StatefulWidget {
  const HttpPackage({super.key});

  @override
  State<HttpPackage> createState() => _HttpPackageState();
}

class _HttpPackageState extends State<HttpPackage> {
  //  fetch data from API method

  Future<void> getRequest() async {
    var url = Uri.parse('https://reqres.in/api/users?page=2');
    var response = await http.get(url);
    print(response.body.toString());
  }

  //  send data to API method

  Future<void> postRequest() async {
    var url = Uri.parse('https://reqres.in/api/login');

    var data = {"email": "eve.holt@reqres.in", "password": "cityslicka"};
    var response = await http.post(url, body: data);
    print(response.body.toString());
  }

  @override
  void initState() {
    // getRequest();
    postRequest();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('http package implimentation'), elevation: 0),
    );
  }
}
