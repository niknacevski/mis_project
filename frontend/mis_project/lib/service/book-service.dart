import 'dart:convert';
import 'package:http/http.dart' as http;

import '../model/author.dart';
import '../model/book.dart';

String book_path = "http://127.0.0.1:8080/api/books";
String author_path = "http://127.0.0.1:8080/api/authors";

Future<List<Book>> findBooks() async {
  var url = Uri.parse(book_path);
  var response = await http.get(
    url,
  );
  print('getting books');

  if (response.statusCode == 200) {
    List<dynamic> jsonResponse = json.decode(response.body);
    print(jsonResponse);
    return jsonResponse.map((data) => Book.fromJson(data)).toList();
  } else {
    throw Exception('Failed to load books');
  }
}

Future<List<Author>> findAuthors() async {
  var url = Uri.parse(author_path);
  var response = await http.get(
    url,
  );
  print('getting authors');

  if (response.statusCode == 200) {
    List<dynamic> jsonResponse = json.decode(response.body);
    print(jsonResponse);
    return jsonResponse.map((data) => Author.fromJson(data)).toList();
  } else {
    throw Exception('Failed to load authors');
  }
}