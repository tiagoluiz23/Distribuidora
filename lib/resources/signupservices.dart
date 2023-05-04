import 'dart:convert';
import 'package:app_dist_ita/resources/routes.dart';
import 'package:http/http.dart' as http;

class SignUpService {
  signUp(String email, String password) async {
    http.Response response = await http.post(
      Uri.parse(Routes().signUp()),
      body: json.encode(
        {
          "email": email,
          "password": password,
          "returnSecureToken": true,
        },
      ),
    );

    // ignore: avoid_print
    print(response.body);
  }
}