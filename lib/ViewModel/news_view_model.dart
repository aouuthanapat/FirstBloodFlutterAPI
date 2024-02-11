

import 'package:flutter_api/Model/news_channel_headlines_model.dart';
import 'package:flutter_api/Repository/news_repository.dart';

class NewsViewModel {

  final _rep = NewsRepository();
  Future<NewsChannelsHeadlinesModel> fetchNewChannelHeadlinesApi(String channelName) async{
    final response = await _rep.fetchNewChannelHeadlinesApi(channelName);
    return response ;
  }
}