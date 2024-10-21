import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:swifty_companion/auth_service.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:swifty_companion/pages/home.dart';
import 'package:swifty_companion/user.dart';
import 'package:swifty_companion/user_repository.dart';

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
  else{
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString('token', token);
    logger.i(token);
  }
  try {
    User? user = await UserRepository().fetchUser('mgolinva');
    logger.i(user?.poolYear);
  }
  catch(e){
    logger.e('Error main: $e');
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