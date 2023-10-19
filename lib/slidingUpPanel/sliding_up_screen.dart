import 'package:flutter/material.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

class SlidingUpScreen extends StatelessWidget {
  const SlidingUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SlidingUpPanel(
        body: Image.network(
          'https://img.freepik.com/free-photo/red-white-cat-i-white-studio_155003-13189.jpg?w=2000',
          fit: BoxFit.fill,
        ),
        panelBuilder: (sc) => PannelWidget(controller: sc),
      ),
    );
  }
}

class PannelWidget extends StatelessWidget {
  final ScrollController controller;

  const PannelWidget({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return ListView(
      controller: controller,
      children: const [
        SizedBox(height: 30),
        Text(
            'How can I create a page that slides from the bottom of the screen and when it passes a certain threshold automatically fills the screen? Something like this:'),
        SizedBox(height: 30),
        Text(
            'The above demo video shows how to create a beautiful onboarding screen in a flutter. It shows how onboarding will work using the intro_slider package in your flutter applications. It shows beautiful three designs that slide as we click on Next. It will be shown on your device.'),
        SizedBox(height: 30),
        Text(
            'How can I create a page that slides from the bottom of the screen and when it passes a certain threshold automatically fills the screen? Something like this:'),
        SizedBox(height: 30),
        Text(
            'The above demo video shows how to create a beautiful onboarding screen in a flutter. It shows how onboarding will work using the intro_slider package in your flutter applications. It shows beautiful three designs that slide as we click on Next. It will be shown on your device.'),
        SizedBox(height: 30),
        Text(
            'How can I create a page that slides from the bottom of the screen and when it passes a certain threshold automatically fills the screen? Something like this:'),
        SizedBox(height: 30),
        Text(
            'The above demo video shows how to create a beautiful onboarding screen in a flutter. It shows how onboarding will work using the intro_slider package in your flutter applications. It shows beautiful three designs that slide as we click on Next. It will be shown on your device.')
      ],
    );
  }
}
