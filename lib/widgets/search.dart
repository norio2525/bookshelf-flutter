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
                Text('ここに検索ボックスを置く', style: Theme
                    .of(context)
                    .textTheme
                    .headline),
              ],
            )
        ),
    );
  }
}