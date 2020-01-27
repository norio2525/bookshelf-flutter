import 'package:bookshelf/widgets/search_page.dart';
import 'package:flutter/material.dart';

class ShelfPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text('本棚', style: Theme.of(context).textTheme.headline),
          MaterialButton(
            child: Text('お試し結果'),
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => SearchScreen()));
            },
          )
        ],
      )),
    );
  }
}
