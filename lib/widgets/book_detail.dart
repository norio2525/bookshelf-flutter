import 'package:bookshelf/database/moor_database.dart';
import 'package:bookshelf/model/rakuten_book_response.dart';
import 'package:flutter/material.dart';
import 'package:moor/moor.dart' hide Column;

class BookDetailScreen extends StatelessWidget {
  RakutenBook _book;
  final database = MyDatabase();

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
              Text(_book.title, style: Theme
                  .of(context)
                  .textTheme
                  .headline1),
              FlatButton(
                onPressed: () {
                  database.addBook(
                    BooksCompanion(
                      title: Value(_book.title),
                      author: Value(_book.author),
                    ),
                  );
                },
                child: Text(
                    '登録する'
                ),
              )
            ],
          )),
    );
  }
}
