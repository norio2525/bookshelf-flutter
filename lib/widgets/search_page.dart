import 'package:bookshelf/http/api_client.dart';
import 'package:bookshelf/model/rakuten_book_response.dart';
import 'package:bookshelf/widgets/book_detail.dart';
import 'package:flutter/material.dart';

class SearchScreen extends StatefulWidget {
  final String title;
  final String author;

  SearchScreen({Key key, this.title, this.author}) : super(key: key);

  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  ApiClient _apiClient = ApiClient();
  Future<RakutenBookResponse> _result;
  List<RakutenBook> _list = new List();
  ScrollController _scrollController = new ScrollController();
  bool isPerformingRequest = false;
  int nextRequestPage = 1;
  int lastCount = 0;
  LoadingState _currentState = LoadingState.WAITING;

  @override
  void initState() {
    super.initState();
    setState(() {
      _result =
          _apiClient.fetchBooks(widget.title, widget.author, nextRequestPage);
      _currentState = LoadingState.DONE;
    });
    _scrollController.addListener(() {
      if (_scrollController.position.pixels ==
          _scrollController.position.maxScrollExtent) {
        if (nextRequestPage > 1) {
          _getMoreData();
        }
      }
    });
  }

  void _getMoreData() {
    if (!isPerformingRequest && lastCount > 0) {
      setState(() {
        isPerformingRequest = true;
      });
      _result =
          _apiClient.fetchBooks(widget.title, widget.author, nextRequestPage);
    }
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
    GestureDetector makeItem(RakutenBook book) =>
        GestureDetector(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => BookDetailScreen(book)));
          },
          child: Row(
            children: [
              FadeInImage.assetNetwork(
                height: 96.0,
                width: 96.0,
                placeholder: 'assets/no_image.png',
                image: book.mediumImageUrl,
              ),
              Column(
                children: <Widget>[Text(book.title), Text(book.author)],
              )
            ],
          ),
        );

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
          future: _result,
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              RakutenBookResponse response = snapshot.data;
              if (lastCount != response.last) {
                // 新しいデータの場合のみリスト更新
                lastCount = response.last;
                _list.addAll(response.items);
                if (response.count > response.last) {
                  // 追加読み込み可能であれば次のリクエストページカウントをインクリメント
                  nextRequestPage++;
                  isPerformingRequest = false;
                  _currentState = LoadingState.DONE;
                } else if (response.count == response.last) {
                  // すべて読み込み完了した場合は、lastcountをマイナス値にして追加読み込みされないようにする
                  lastCount = -1;
                }
              }
              return ListView.builder(
                controller: _scrollController,
                itemBuilder: (BuildContext context, int index) {
                  RakutenBook book = _list[index];
                  return makeItem(book);
                },
                itemCount: _list.length,
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

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }
}

enum LoadingState { DONE, LOADING, WAITING, ERROR }
