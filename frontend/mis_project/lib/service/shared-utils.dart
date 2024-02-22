import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';

Future<void> saveToken(String token) async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  prefs.setString('jwtToken', token);
}

Future<String?> getToken() async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  var value = prefs.getString('jwtToken');
  if(value != null) {
    Map<String, dynamic> map = json.decode(value);
    return map['token'];
  }
  return null;
}