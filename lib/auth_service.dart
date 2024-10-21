import 'package:oauth2/oauth2.dart' as oauth2;
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:http/http.dart' as http;
import 'package:logger/logger.dart';

var logger = Logger();

class AuthService {

  final String uid = dotenv.env['UID'] ?? '';
  final String secret = dotenv.env['SECRET'] ?? '';
  final String tokenUrl = 'https://api.intra.42.fr/oauth/token';

  Future<String?> authenticate() async {
    try {
      final client = await oauth2.clientCredentialsGrant(
      Uri.parse(tokenUrl),
      uid,
      secret,
      httpClient: http.Client(),
      );
      return client.credentials.accessToken;
    }
    catch(e){
      logger.e('Error token: $e');
      return null;
    }
  }
}
