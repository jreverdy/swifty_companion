import 'dart:convert'; // Pour encoder/décoder JSON
import 'package:shared_preferences/shared_preferences.dart';
import 'package:http/http.dart' as http;
import 'package:swifty_companion/utils/auth_service.dart';
import 'package:swifty_companion/utils/generate_token.dart';
import 'package:swifty_companion/models/user_model.dart';

final Map<String, UserModel?> _userCache = {};

Future<String?> getToken() async {
  final SharedPreferences prefs = await SharedPreferences.getInstance();
  return prefs.getString('token');
}

class UserRepository {

  Future<UserModel?> fetchUser(String username) async {
    if (_userCache.containsKey(username)) {
      logger.i('ALREADY IN MEMORY');
      return _userCache[username];
    }
    String? token = await getToken();
    try {
      final res = await http.get(
        Uri.parse('https://api.intra.42.fr/v2/users/$username'),
        headers: {
          'Authorization': 'Bearer $token',
        },
      );
      if (res.statusCode == 200) {
        UserModel user = UserModel.fromJson(jsonDecode(res.body));
        _userCache[username] = user;
        logger.i(_userCache);
        return user;
      } 
      else if (res.statusCode == 401) {
        await generateToken();
        return await fetchUser(username); 
      } 
      else {
        logger.e('Failed to load user: ${res.statusCode}');
        return null;
      }
    } catch (e) {
      throw Exception('Error from user_repository: $e');
    }
  }
}
