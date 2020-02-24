class RakutenBookResponse {
  final int count;
  final List<RakutenBook> items;

  RakutenBookResponse({this.count, this.items});

  factory RakutenBookResponse.fromJson(Map<String, dynamic> json) {
    var list = json['Items'] as List;

    List<RakutenBook> bookList =
        list.map((i) => RakutenBook.fromJson(i)).toList();

    return RakutenBookResponse(
      count: json['count'],
      items: bookList,
    );
  }
}

class RakutenBook {
  /// タイトル
  final String title;

  /// タイトルかな
  final String titleKana;

  /// 著者名
  final String author;

  /// 著者名かな
  final String authorKana;

  /// 出版社名
  final String publisherName;

  /// 書籍のサイズ 1:単行本2:文庫3:新書4:全集・双書5:事・辞典6:図鑑7:絵本8:カセット,CDなど9:コミック10:ムックその他
  final String size;

  /// ISBNコード(書籍コード)
  final String isbn;

  /// 商品の説明文
  final String itemCaption;

  /// 発売日
  final String salesDate;

  /// 定価
  final int itemPrice;

  /** 商品のURL */
  final String itemUrl;

  /// 画像のURL(64x64)
  final String smallImageUrl;

  /// 画像のURL(128x128)
  final String mediumImageUrl;

  /// 画像のURL(200x200)
  final String largeImageUrl;

  /// レビューの件数
  final int reviewCount;

  /// レビューの平均点
  final String reviewAverage;

  RakutenBook(
      {this.title,
      this.titleKana,
      this.author,
      this.authorKana,
      this.publisherName,
      this.size,
      this.isbn,
      this.itemCaption,
      this.salesDate,
      this.itemPrice,
      this.itemUrl,
      this.smallImageUrl,
      this.mediumImageUrl,
      this.largeImageUrl,
      this.reviewCount,
      this.reviewAverage});

  factory RakutenBook.fromJson(Map<String, dynamic> json) {
    return RakutenBook(
        title: json['title'],
        titleKana: json['titleKana'],
        author: json['author'],
        authorKana: json['authorKana'],
        publisherName: json['publisherName'],
        size: json['size'],
        isbn: json['isbn'],
        itemCaption: json['itemCaption'],
        salesDate: json['salesDate'],
        itemPrice: json['itemPrice'],
        itemUrl: json['itemUrl'],
        smallImageUrl: json['smallImageUrl'],
        mediumImageUrl: json['mediumImageUrl'],
        largeImageUrl: json['largeImageUrl'],
        reviewCount: json['reviewCount'],
        reviewAverage: json['reviewAverage']);
  }
}
