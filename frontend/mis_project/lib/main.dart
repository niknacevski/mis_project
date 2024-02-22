import 'package:flutter/material.dart';
import 'package:mis_project/pages/books-page.dart';
import 'package:mis_project/pages/login-page.dart';

void main() {
  runApp(const BookApp());
}

class BookApp extends StatelessWidget {
  const BookApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Book App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        
      ),
      home: LandingPage(),
    );
  }
}

class LandingPage extends StatefulWidget {
  const LandingPage({super.key});

  @override
  _LandingPageState createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  Future<List<Book>> _fetchBooks() async {
    // Placeholder data for testing
    return [
      Book('1', 'Book 1', 'Author 1'),
      Book('2', 'Book 2', 'Author 2'),
      Book('3', 'Book 3', 'Author 3'),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Book App')),
      body: LoginPage()
    );
  }
}

class Book {
  final String id;
  final String title;
  final String author;

  Book(this.id, this.title, this.author);
}
