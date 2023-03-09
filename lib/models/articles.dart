class Article {
  final String title;
  final String description;
  final String imageUrl;
  final String articleUrl;

  Article({required this.title, required this.description, required this.imageUrl, required this.articleUrl});

  factory Article.fromJson(Map<String, dynamic> jsonData) {
    //get costrucror of Article with mapping attr with .fromjsondata instead of fetchinf data in serve api
    return Article(
        title: jsonData['title'],
        description: jsonData['description'],
        imageUrl: jsonData['urlToImage'],
        articleUrl: jsonData['url']);
  }

}