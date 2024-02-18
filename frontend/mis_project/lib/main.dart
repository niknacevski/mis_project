import 'package:flutter/material.dart';
import 'package:mis_project/pages/books-page.dart';

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
      appBar: AppBar(
        title: Text('Book App'),
      ),
      body: FutureBuilder(
        future: _fetchBooks(),
        builder: (context, AsyncSnapshot<List<Book>> snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            // Loading state
            return Center(
              child: CircularProgressIndicator(),
            );
          } else if (snapshot.hasError) {
            // Error state
            return Center(
              child: Text('Error fetching data'),
            );
          } else if (snapshot.data == null || snapshot.data!.isEmpty) {
            // Empty state
            return Center(
              child: Text('No books available'),
            );
          } else {
            // Data loaded successfully
            return ListView.builder(
              itemCount: snapshot.data!.length,
              itemBuilder: (context, index) {
                Book book = snapshot.data![index];
                return ListTile(
                  title: Text(book.title),
                  subtitle: Text('By ${book.author}'),
                );
              },
            );
          }
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => BooksPage()),
          );
        },
        tooltip: 'See books',
        child: const Icon(Icons.list),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

class Book {
  final String id;
  final String title;
  final String author;

  Book(this.id, this.title, this.author);
}
