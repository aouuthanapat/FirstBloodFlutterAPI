import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:flutter_api/Model/news_channel_headlines_model.dart';
import 'package:http/http.dart' as http;

class NewsRepository {

  Future <NewsChannelsHeadlinesModel> fetchNewChannelHeadlinesApi() async {
    String url =
        'https://newsapi.org/v2/top-headlines?sources=bbc-news&apiKey=69418a59f60b4861b26ca700757532c1';

    final response = await http.get(Uri.parse(url));
    if (kDebugMode) {
      print(response.body);
    }
    if (response.statusCode == 200) {
      final body = jsonDecode(response.body);
      return NewsChannelsHeadlinesModel.fromJson(body);
    }
    throw Exception('Ошибка.');
  }
}