import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../view_model/articlelistview.dart';


class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child:  ElevatedButton(
          onPressed: () async {
            await Provider.of<ArticlesListViewModel>(context, listen: false)
                .fetchArticles();
            print(Provider.of<ArticlesListViewModel>(context, listen: false)
                .articlesList);
          }, child: Text('go'),
        ),
      ),
    );
  }
}