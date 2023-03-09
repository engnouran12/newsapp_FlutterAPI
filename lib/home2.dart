import 'package:flutter/material.dart';
import 'package:newsapp/server/categservw.dart';
import 'package:newsapp/viewscreen/categview.dart';

import 'models/catmodel.dart';

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}
List<CategorieModel> categories = <CategorieModel>[];

  @override
  void initState() {
    categories = getCategories(); 
  }

class _MyWidgetState extends State<MyWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar (
   
    title: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          "Flutter",
          style:
          TextStyle(color: Colors.black87, fontWeight: FontWeight.w600),
        ),
        Text(
          "News",
          style: TextStyle(color: Colors.blue, fontWeight: FontWeight.w600),
        )
      ],
    ),
    backgroundColor: Colors.transparent,
    elevation: 0.0,
  ),
       body:Container(
  padding: EdgeInsets.symmetric(horizontal: 16),
  height: 70,
  child: ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: categories.length,
      itemBuilder: (context, index) {
        return CategoryCard(
          imageAssetUrl: categories[index].imageAssetUrl,
          categoryName: categories[index].categorieName,
        );
      }),
),

    );
  }
}


