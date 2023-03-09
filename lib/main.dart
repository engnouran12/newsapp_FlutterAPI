import 'package:flutter/material.dart';
import 'package:newsapp/home2.dart';
import 'package:newsapp/view_model/articlelistview.dart';
import 'package:newsapp/viewscreen/home.dart';

import 'package:provider/provider.dart';

void main() {
  runApp(NewsCloud());
}

class NewsCloud extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<ArticlesListViewModel>(
      create: (context) => ArticlesListViewModel(),
      child: MaterialApp(
        home: MyWidget(),
      ),
    );
  }
}
