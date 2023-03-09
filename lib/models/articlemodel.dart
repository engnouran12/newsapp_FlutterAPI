
import 'articles.dart';
//large out model
class Articles {
  final List<dynamic> articles;
  Articles({required this.articles});
  factory Articles.fromJson(Map<String, dynamic> jsonData) {
    return Articles(
      articles: jsonData['articles'],
      //return list of map article
    );
  }
}