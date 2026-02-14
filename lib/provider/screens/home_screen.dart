import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_packages/provider/providers/provider.dart';

class ProviderHome extends StatefulWidget {
  const ProviderHome({super.key});

  @override
  State<ProviderHome> createState() => _ProviderHomeState();
}

class _ProviderHomeState extends State<ProviderHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('provider package implimentation'),
        elevation: 0,
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: ChangeNotifierProvider<HomePageProvider>(
          create: (context) => HomePageProvider(),
          child: Consumer<HomePageProvider>(
            builder: (context, provider, child) {
              return Column(
                children: [
                  Text(
                    provider.eligibilityMessage.toString(),
                    style: TextStyle(
                      color: (provider.isEligible == true)
                          ? Colors.green
                          : Colors.red,
                    ),
                  ),
                  TextField(
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      hintText: 'Enter age',
                    ),
                    onChanged: (value) {
                      provider.checkEligibility(int.parse(value));
                    },
                  )
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
