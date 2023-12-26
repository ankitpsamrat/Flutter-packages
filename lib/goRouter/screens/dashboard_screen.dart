import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../services/router_service.dart';

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
            // String name = 'Ankit';
            // context.go('/profile/$name');

            //  this method used for named router
            String name = 'Ankit';
            context.goNamed(
              RouterService.profile,
              pathParameters: {'name': name},
            );
          },
          child: Text('Profile'),
        ),
      ),
    );
  }
}
