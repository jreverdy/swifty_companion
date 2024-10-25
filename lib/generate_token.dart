import 'package:shared_preferences/shared_preferences.dart';
import 'package:swifty_companion/auth_service.dart';

Future<void> generateToken() async{
  String? token = await AuthService().authenticate();
  if (token == null){
    logger.e('Token error');
    return;
  }
  else{
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString('token', token);
    logger.i('token generated $token');
  }
}