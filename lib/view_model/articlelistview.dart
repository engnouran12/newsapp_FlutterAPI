import 'package:flutter/cupertino.dart';

import '../models/articles.dart';
import '../server/newsapp_serve.dart';
//make model work

class ArticlesListViewModel extends ChangeNotifier {
  List<Article?> _articlesList = [];
  List<Article?> _articlesListByCategory = [];

  Future<void> fetchArticles() async {
    _articlesList = await NewsApi().fetchArticles();
    notifyListeners();
  }

  Future<void> fetchArticlesByCategory(String category) async {
    _articlesListByCategory = await NewsApi().fetchArticlesByCategory(category);
    notifyListeners();
  }

  Future<List<Article?>> get articlesList async => await _articlesList;
  List<Article?> get articlesListByCategory => _articlesListByCategory;
}
