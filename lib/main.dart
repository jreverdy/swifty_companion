import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:swifty_companion/auth_service.dart';
import 'package:swifty_companion/pages/home.dart' ; 
import 'package:http/http.dart' as http;

// Future fetch(String token) async {
//   try{
//     final res = await http.get(
//       Uri.parse("https://api.intra.42.fr/v2/users"),
//       headers: {
//         'Authorization': 'Bearer $token'
//       }
//     );
//     logger.i(res.body);
//     if (res.statusCode == 200){
//       return jsonDecode(res.body);
//     }
//   }
//   catch(e){
//     logger.e('error');
//   }
  
// }

Future <void> main() async {
  await dotenv.load(fileName: ".env");

  String? token = await AuthService().authenticate();
  if (token == null){
    logger.e('Token error');
    return;
  }
  logger.i(token);
  // var userInfo = await fetch(token);
  
  // if (userInfo != null) {
  //   logger.i('User Info: $userInfo');
  //   // You can process or display userInfo as needed
  // } else {
  //   logger.e('Failed to fetch user info');
  // }
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