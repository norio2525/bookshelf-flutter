
class RakutenBookResponse {
  final int count;
  final List<RakutenBook> items;

  RakutenBookResponse({this.count, this.items});

  factory RakutenBookResponse.fromJson(Map<String, dynamic> json) {
    var list = json['Items'] as List;

    List<RakutenBook> bookList = list.map((i) => RakutenBook.fromJson(i)).toList();

    return RakutenBookResponse(
      count: json['count'],
      items: bookList,
    );
  }
}

class RakutenBook {
  /// タイトル
  final String title;

  /// 著者名
  final String author;

  RakutenBook({this.title, this.author});

  factory RakutenBook.fromJson(Map<String, dynamic> json) {
    return RakutenBook(title: json['title'], author: json['author']);
  }
}
