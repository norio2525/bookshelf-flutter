import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:bookshelf/model/rakuten_book.dart';
import 'package:flutter/cupertino.dart';

class ApiClient {
  static final _client = ApiClient._internal();
  final _http = HttpClient();

  ApiClient._internal();

  /// 楽天APIのベースURL
  static final String baseUrl = 'app.rakuten.co.jp';

  /// 楽天APIのApplicationId
  static final String rakuten_app_id = "804a4e3d740efb0d916402051a607a9b";

  factory ApiClient() => _client;

  Future<dynamic> _getJson(Uri uri) async {
    var response = await (await _http.getUrl(uri)).close();
    var transformedResponse = await response.transform(utf8.decoder).join();
    return json.decode(transformedResponse);
  }

  Future<List<RakutenBook>> fetchRakutenBooks(
      {int page: 1, String author: "伊坂"}) async {
    var url = Uri.https(baseUrl, 'services/api/BooksBook/Search/20170404', {
      'applicationId': rakuten_app_id,
      'author': author,
      'outOfStockFlag': '1'
    });

    debugPrint('url = $url');

    return _getJson(url).then((json) => json['Items']).then((data) => data
        .map<RakutenBook>((item) => RakutenBook(item))
        .toList());
  }
}
