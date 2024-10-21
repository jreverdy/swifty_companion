import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  final String data;
  const Profile({super.key, required this.data});
  @override
  Widget build(BuildContext context) {
    // dynamic user = await UserRepository.fetchUser(data);
    // logger.i(user);
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