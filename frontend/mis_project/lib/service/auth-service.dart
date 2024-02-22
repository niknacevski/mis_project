import 'package:http/http.dart' as http;
import 'package:mis_project/model/login-request.dart';

import 'dart:convert';

import 'package:mis_project/model/user-request.dart';
import 'package:mis_project/service/shared-utils.dart';

String path = 'http://127.0.0.1:8080/api/auth';

Future<void> register(
    String username, String password, String confirmPassword) async {
  var url = Uri.parse('$path/register');
  var response = await http.post(url,
      headers: {
        'Content-Type': 'application/json',
      },
      body: jsonEncode(UserRequest(
          username: username, password: password, confirmPassword: confirmPassword)));

  if (response.statusCode == 200) {
    print('Response data: ${response.body}');
  }
}

Future<bool> login(String email, String password) async {
  saveToken('');
  var url = Uri.parse('$path/login');
  var response = await http.post(url,
      headers: {'Content-Type': 'application/json'},
      body: jsonEncode(LoginRequest(username: email, password: password)));
  if (response.statusCode == 200) {
    print('Login data: ${response.body}');
    await saveToken(response.body);
    return Future(() => true);
  }
  return Future(() => false);
}