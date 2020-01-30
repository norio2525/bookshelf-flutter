
class RakutenBookResponse {
  final int count;
  final List<Book> items;

  RakutenBookResponse({this.count, this.items});

  factory RakutenBookResponse.fromJson(Map<String, dynamic> json) {
    var list = json['Items'] as List;

    List<Book> bookList = list.map((i) => Book.fromJson(i)).toList();

    return RakutenBookResponse(
      count: json['count'],
      items: bookList,
    );
  }
}

class Book {
  /// タイトル
  final String title;

  /// 著者名
  final String author;

  Book({this.title, this.author});

  factory Book.fromJson(Map<String, dynamic> json) {
    return Book(title: json['title'], author: json['author']);
  }
}
