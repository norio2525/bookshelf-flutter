class RakutenBook {
  /// タイトル
  final String title;

  /// 著者名
  final String author;

  factory RakutenBook(Map jsonMap) => RakutenBook._internalFromJson(jsonMap);

  RakutenBook._internalFromJson(Map jsonMap)
      : title = jsonMap["title"],
        author = jsonMap["author"];
}
