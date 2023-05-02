import 'dart:convert';
import 'package:app_dist_ita/resources/routes.dart';
import 'package:http/http.dart' as http;

class LoginService {
  signIn(String email, String password) async {
    http.Response response = await http.post(
      Uri.parse(Routes().signIn()),
      body: json.encode(
        {
          "email": email,
          "password": password,
          "returnSecureToken": true,
        },
      ),
    );

    // ignore: avoid_print
    print(response);
  }
}