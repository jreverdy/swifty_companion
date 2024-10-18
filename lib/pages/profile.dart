import 'package:flutter/material.dart';
import 'package:swifty_companion/pages/home.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(),
    );
  }

  AppBar appBar() {
    return AppBar(
      title: const Text('Profile'),
    );
  }
}