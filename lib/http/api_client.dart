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

  Future<RakutenBookResponse> fetchBooks(String title, String author, int page) async {
    Map<String, String> params = {
      'applicationId': rakuten_app_id,
      'outOfStockFlag': '1',
      'formatVersion': '2'
    };

    if (title.isNotEmpty) {
      params['title'] = title;
    }
    if (author.isNotEmpty) {
      params['author'] = author;
    }
    params['page'] = page.toString();

    var url =
        Uri.https(baseUrl, 'services/api/BooksBook/Search/20170404', params);
    final response = await http.get(url);
    if (response.statusCode == 200) {
      return RakutenBookResponse.fromJson(json.decode(response.body));
    } else {
      throw Exception('Failed to load book');
    }
  }
}
