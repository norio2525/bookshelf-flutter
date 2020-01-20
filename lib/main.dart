// Flutter code sample for

// This example shows a [BottomNavigationBar] as it is used within a [Scaffold]
// widget. The [BottomNavigationBar] has three [BottomNavigationBarItem]
// widgets and the [currentIndex] is set to index 0. The selected item is
// amber. The `_onItemTapped` function changes the selected item's index
// and displays a corresponding message in the center of the [Scaffold].
//
// ![A scaffold with a bottom navigation bar containing three bottom navigation
// bar items. The first one is selected.](https://flutter.github.io/assets-for-api-docs/assets/material/bottom_navigation_bar.png)

import 'package:bookshelf/view/search.dart';
import 'package:bookshelf/view/settings.dart';
import 'package:bookshelf/view/shelf.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

/// This Widget is the main application widget.
class MyApp extends StatelessWidget {
  static const String _title = 'Flutter Code Sample';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      home: MyStatefulWidget(),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  MyStatefulWidget({Key key}) : super(key: key);

  @override
  _MyStatefulWidgetState createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget>
    with SingleTickerProviderStateMixin {
  int _selectedIndex = 0;
  PageController _pageController;

  List<BottomNavigationBarItem> myBottomNavigationBarItem() {
    return [
      BottomNavigationBarItem(
        icon: Icon(Icons.equalizer, color: Color.fromRGBO(255, 152, 0, 1.0)),
        title: Text('本棚',
            style: TextStyle(color: Color.fromRGBO(255, 152, 0, 1.0))),
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.search, color: Color.fromRGBO(255, 152, 0, 1.0)),
        title: Text('探す',
            style: TextStyle(color: Color.fromRGBO(255, 152, 0, 1.0))),
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.settings, color: Color.fromRGBO(255, 152, 0, 1.0)),
        title: Text('設定',
            style: TextStyle(color: Color.fromRGBO(255, 152, 0, 1.0))),
      ),
    ];
  }

  @override
  void initState() {
    super.initState();
    // コントローラ作成
    _pageController = PageController(
      initialPage: _selectedIndex,
    );
  }

  @override
  void dispose() {
    // コントローラ破棄
    _pageController.dispose();
    super.dispose();
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;

      _pageController.jumpToPage(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Smart Bookshelf'),
        backgroundColor: Color.fromRGBO(255, 152, 0, 1.0),
      ),
      body: PageView(
          physics: NeverScrollableScrollPhysics(),
          controller: _pageController,
          onPageChanged: (index) {
            setState(() {
              _selectedIndex = index;
            });
          },
          children: <Widget>[ShelfPage(), SearchPage(), SettingsPage()]),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        items: myBottomNavigationBarItem(),
      ),
    );
  }
}
