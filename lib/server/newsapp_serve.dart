//apikey=49a9f513ca2c4ec4a1e74354696fe522
import 'dart:convert';

import 'package:http/http.dart' as http;

import '../models/articlemodel.dart';
import '../models/articles.dart';

class NewsApi {
  //String baseUrl = 'https://newsapi.org/v2';

  //final String apiKey = '49a9f513ca2c4ec4a1e74354696fe522';
  Uri url = Uri.parse(
      'https://newsapi.org/v2/top-headlines?country=eg&apiKey=49a9f513ca2c4ec4a1e74354696fe522');

  Future<List<Article?>> fetchArticles() async {
    Articles? articles;
    List<Article>? articlesList;
      try {
      http.Response response = await http.get(url);
      if (response.statusCode == 200) {
        var data = response.body;
        var jsonData = jsonDecode(data);
        Articles? articles = Articles.fromJson(jsonData);
        List<Article> articlesList =
            articles.articles.map((e) => Article.fromJson(e)).toList();
        return articlesList;
      } else {
        print('status code = ${response.statusCode}');
      }
    } catch (ex) {
      print(ex);
    }
    throw [''];
   // return articlesList!;
  }

  Future<List<Article>> fetchArticlesByCategory(String category) async {
    Uri url2 = Uri.parse(
        'https://newsapi.org/v2/top-headlines?country=eg&category=$category&apiKey=49a9f513ca2c4ec4a1e74354696fe522');

    http.Response response = await http.get(url2);
    if (response.statusCode == 200) {
      String data = response.body;
      var jsonData = jsonDecode(data);
      Articles articles = Articles.fromJson(jsonData);
      Future<List<Article>> articlesList = (articles.articles
          .map((e) => Article.fromJson(e))
          .toList()) as Future<List<Article>>;
      return articlesList;
    } else {
      print('status code = ${response.statusCode}');
    }

    throw [];
  }
}
