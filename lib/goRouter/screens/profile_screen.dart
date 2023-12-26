import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../services/router_service.dart';

class ProfileScreen extends StatelessWidget {
  final String name;

  const ProfileScreen({super.key, required this.name});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        title: Text('Welcome $name'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            //  GoRouter.of(context).go('/');

            //  It is also written like this.
            // context.go('/');

            //  this method used for named router
            context.goNamed(RouterService.dashboard);
          },
          child: Text('Dashboard'),
        ),
      ),
    );
  }
}
