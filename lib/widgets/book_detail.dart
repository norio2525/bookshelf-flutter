import 'package:bookshelf/database/moor_database.dart';
import 'package:bookshelf/model/rakuten_book_response.dart';
import 'package:flutter/material.dart';
import 'package:moor/moor.dart' hide Column;

import '../main.dart';

class BookDetailScreen extends StatelessWidget {
  RakutenBook _book;

  BookDetailScreen(RakutenBook book) {
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
          Text(_book.title, style: Theme.of(context).textTheme.headline1),
          FlatButton(
            onPressed: () {
              database.addBook(
                BooksCompanion(
                    title: Value(_book.title),
                    titleKana: Value(_book.titleKana),
                    author: Value(_book.author),
                    authorKana: Value(_book.authorKana),
                    publisherName: Value(_book.publisherName),
                    size: Value(_book.size),
                    isbn: Value(_book.isbn),
                    itemCaption: Value(_book.itemCaption),
                    salesDate: Value(_book.salesDate),
                    itemUrl: Value(_book.itemUrl),
                    smallImageUrl: Value(_book.smallImageUrl),
                    mediumImageUrl: Value(_book.mediumImageUrl),
                    largeImageUrl: Value(_book.largeImageUrl),
                    registerTime: Value(new DateTime.now())),
              );
            },
            child: Text('登録する'),
          )
        ],
      )),
    );
  }
}
