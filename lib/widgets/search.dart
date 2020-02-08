import 'package:bookshelf/widgets/search_page.dart';
import 'package:flutter/material.dart';

class SearchPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _SearchPageScreen();
}

class _SearchPageScreen extends State<SearchPage> {
  final _title = new TextEditingController();
  final _author = new TextEditingController();
  bool _titleValidate = false;
  bool _authorValidate = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextField(
              controller: _title,
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'タイトル',
                  errorText: _titleValidate ? '入力必須です' : null),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextField(
              controller: _author,
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: '著者',
                  errorText: _authorValidate ? '入力必須です' : null),
            ),
          ),
          Spacer(),
          Row(
            children: [
              Expanded(
                child: FlatButton(
                  padding: EdgeInsets.all(16.0),
                  onPressed: () {
                    if (_title.text.isEmpty && _author.text.isEmpty) {
                      setState(() {
                        _titleValidate = true;
                        _authorValidate = true;
                      });
                      return;
                    }
                    setState(() {
                      _titleValidate = false;
                      _authorValidate = false;
                    });
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => SearchScreen(
                                title: _title.text, author: _author.text)));
                  },
                  color: Colors.blue,
                  textColor: Colors.white,
                  child: Text(
                    '検索する',
                    style: TextStyle(fontSize: 16.0),
                  ),
                ),
              )
            ],
          )
        ],
      )),
    );
  }
}
