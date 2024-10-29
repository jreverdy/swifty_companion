import 'package:shared_preferences/shared_preferences.dart';
import 'package:swifty_companion/utils/auth_service.dart';

int counter = 0;

Future<void> generateToken() async{
  String? token = await AuthService().authenticate();
  if (token == null){
    logger.e('Token error');
    return;
  }
  else{
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    counter += 1;
    await prefs.setString('token', token);
    logger.i('token generated n*$counter: $token');
  }
}