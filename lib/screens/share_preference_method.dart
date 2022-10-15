import 'package:flutter/material.dart';

class SharePreference extends StatefulWidget {
  const SharePreference({super.key});

  @override
  State<SharePreference> createState() => _SharePreferenceState();
}

class _SharePreferenceState extends State<SharePreference> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: TextField(),
        ),
      ),
    );
  }
}
