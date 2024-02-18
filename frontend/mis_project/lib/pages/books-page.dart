import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mis_project/model/book.dart';
import 'package:mis_project/service/book-service.dart';

class BooksPage extends StatefulWidget {
  const BooksPage({super.key});

  @override
  State<StatefulWidget> createState() => BooksPageState();
}

class BooksPageState extends State<BooksPage> {
  List<Book> books = [];
  bool isLoading = true;

  @override
  void initState() {
    super.initState();
    _fetchPolls();
  }

  _fetchPolls() async {
    try {
      List<Book> fetchedBooks = await findBooks();
      setState(() {
        books = fetchedBooks;
        isLoading = false;
      });
    } catch (error) {
      print(error);
      setState(() {
        isLoading = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 4,
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
        ),
      ),
      body: ListView.builder(
        itemCount: books.length,
        itemBuilder: (context, index) {
          Book book = books[index];
          return ListTile(
            title: Text(book.title),
            subtitle: Text(book.description),
            // You can add more fields as needed
          );
        },
      ),
    );
  }
}
