import 'package:bookshelf/model/rakuten_book_response.dart';
import 'package:flutter/material.dart';

class BookDetailScreen extends StatelessWidget {
  Book _book;

  BookDetailScreen(Book book) {
    _book = book;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('詳細'),
        backgroundColor: Color.fromRGBO(255, 152, 0, 1.0),
      ),
      body: Center(
          child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(_book.title, style: Theme.of(context).textTheme.headline),
        ],
      )),
    );
  }
}
