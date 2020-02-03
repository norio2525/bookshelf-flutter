import 'dart:async';
import 'dart:convert';

import 'package:bookshelf/model/rakuten_book_response.dart';
import 'package:http/http.dart' as http;

class ApiClient {
  static final _client = ApiClient._internal();

  ApiClient._internal();

  /// 楽天APIのベースURL
  static final String baseUrl = 'app.rakuten.co.jp';

  /// 楽天APIのApplicationId
  static final String rakuten_app_id = "804a4e3d740efb0d916402051a607a9b";

  factory ApiClient() => _client;

  Future<RakutenBookResponse> fetchBooks() async {
    var url = Uri.https(baseUrl, 'services/api/BooksBook/Search/20170404', {
      'applicationId': rakuten_app_id,
      'author': '伊坂',
      'outOfStockFlag': '1',
      'formatVersion': '2'
    });
    final response = await http.get(url);
    if (response.statusCode == 200) {
      return RakutenBookResponse.fromJson(json.decode(response.body));
    } else {
      throw Exception('Failed to load book');
    }
  }
}
