import 'dart:convert'; // Pour encoder/décoder JSON
import 'package:shared_preferences/shared_preferences.dart';
import 'package:http/http.dart' as http;
import 'package:swifty_companion/auth_service.dart';
import 'package:swifty_companion/user.dart';

Future<String?> getToken() async {
  final SharedPreferences prefs = await SharedPreferences.getInstance();
  final String? token = prefs.getString('token');
  return token;
}

class UserRepository {
  final Map<String, User?> _userCache = {};
  Future<User?> fetchUser(String username) async {
    if (_userCache.containsKey(username)){
      return _userCache[username];
    }
    String? token = await getToken();
    try{
      final res = await http.get(
        Uri.parse('https://api.intra.42.fr/v2/users/$username'),
        headers: {
          'Authorization': 'Bearer $token' 
        }
      );
      if (res.statusCode == 200){
        logger.i(jsonDecode(res.body)['campus']);
        User user = User.fromJson(jsonDecode(res.body));
        _userCache[username] = user;
        return user;
      } 
      else {
        logger.e('Failed to load user: ${res.statusCode}');
        return null;
      }
    }
    catch(e){
      throw Exception ('Error from user_repository: $e');
    }
  }
}