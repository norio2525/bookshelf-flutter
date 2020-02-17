import 'package:bookshelf/database/moor_database.dart';
import 'package:flutter/material.dart';

import '../main.dart';

class ShelfPage extends StatefulWidget {
  @override
  _ShelfScreenState createState() => _ShelfScreenState();
}

class _ShelfScreenState extends State<ShelfPage> {
  Future<List<Book>> _bookList;

  @override
  void initState() {
    super.initState();
    setState(() {
      _bookList = database.allBooksEntries;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: _buildContentSection());
  }

  Widget _buildContentSection() {
    return Center(
        child: FutureBuilder<List<Book>>(
      future: _bookList,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          List<Book> list = snapshot.data;
          return ListView(
            children: list
                .map(
                  (Book book) => ListTile(
                      title: Text(book.title),
                      subtitle: Text(book.author),
                      onTap: () {
//                        Navigator.push(
//                            context,
//                            MaterialPageRoute(
//                                builder: (context) => BookDetailScreen(book)));
                      }),
                )
                .toList(),
          );
        } else {
          return Text("${snapshot.error}");
        }
      },
    ));
  }
}
