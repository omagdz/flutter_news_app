import 'dart:convert';

import 'package:news_app/models/ArticleModel.dart';
import 'package:http/http.dart' as http;

class News {
  List<ArticleModel> news = new List();

  Future<void> getNews() async {
    String url =
        "http://newsapi.org/v2/top-headlines?country=eg&category=business&apiKey=5b56c0fbed7149d6bae285e6aa41ac25";

    var response = await http.get(url);
    var jsonData = jsonDecode(response.body);
    if (jsonData['status'] == 'ok') {
      jsonData['articles'].forEach((element) {
        if (jsonData['urlToImage'] != null &&
            jsonData['description'] != null &&
            jsonData['title'] != null) {
          ArticleModel articleModel = ArticleModel(
            author: element['author'],
            title: element['title'],
            description: element['description'],
            url: element['url'],
            imageUrl: element['urlToImage'],
            content: element['content'],
          );
          news.add(articleModel);
        }
      });
    }
  }
}
