import 'package:flutter/material.dart';

class SearchPage extends StatelessWidget {
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
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'タイトル',
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: '著者',
              ),
            ),
          ),
          Spacer(),
          Row(
            children: [
              Expanded(
                child: FlatButton(
                  padding: EdgeInsets.all(16.0),
                  onPressed: () {
                    /**
                         *
                         */
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
