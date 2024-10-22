import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:swifty_companion/auth_service.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:swifty_companion/pages/home.dart';

Future <void> main() async {
  await dotenv.load(fileName: ".env");
  String? token = await AuthService().authenticate();
  if (token == null){
    logger.e('Token error');
    return;
  }
  else{
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString('token', token);
    logger.i(token);
  }
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}