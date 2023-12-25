import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        title: Text('My Dashboard'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            //  GoRouter.of(context).go('/profile');

            //  It is also written like this.
            //  context.go('/profile');

            //  passing parameter to the router
            String name = 'Ankit';
            context.go('/profile/$name');
          },
          child: Text('Profile'),
        ),
      ),
    );
  }
}
