import 'package:bookshelf/http/api_client.dart';
import 'package:bookshelf/model/rakuten_book_response.dart';
import 'package:flutter/material.dart';

class SearchScreen extends StatefulWidget {
  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  ApiClient _apiClient = ApiClient();
  Future<RakutenBookResponse> _resultList;
  LoadingState _currentState = LoadingState.WAITING;

  @override
  void initState() {
    super.initState();
    setState(() {
      _resultList = _apiClient.fetchBooks();
      _currentState = LoadingState.DONE;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('検索結果'),
          backgroundColor: Color.fromRGBO(255, 152, 0, 1.0),
        ),
        body: _buildContentSection());
  }

  Widget _buildContentSection() {
    switch (_currentState) {
      case LoadingState.WAITING:
        return Center(child: Text("Waiting"));
      case LoadingState.ERROR:
        return Center(child: Text("An error occured"));
      case LoadingState.LOADING:
        return Center(
          child: CircularProgressIndicator(),
        );
      case LoadingState.DONE:
        debugPrint('DONE');
        return Center(
            child: FutureBuilder<RakutenBookResponse>(
          future: _resultList,
          builder: (context, snapshot) {
            if (snapshot.hasData) {
//              return ListView.builder(
//                  itemCount: snapshot.data.count,
//                  itemBuilder: (BuildContext context, int index) =>
//                      SearchItemCard(snapshot.data.items[index]));
              RakutenBookResponse response = snapshot.data;
              List<Book> list = response.items;
              return ListView(
                children: list
                    .map(
                      (Book book) => ListTile(
                      title: Text(book.title),
                      subtitle: Text(book.author),
                      onTap: (null)),
                )
                    .toList(),
              );
            } else {
              return Text("${snapshot.error}");
            }
          },
        ));

      default:
        return Container();
    }
  }
}

enum LoadingState { DONE, LOADING, WAITING, ERROR }
