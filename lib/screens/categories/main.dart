import 'package:budget_app/models/category.dart';
import 'package:budget_app/screens/categories/catWidgets/createTile.dart';
import 'package:budget_app/screens/categories/dummyData.dart';
import 'package:flutter/material.dart';

class Categories extends StatefulWidget {
  @override
  _CategoriesState createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  List<Category> cats = dummyCategories;
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemBuilder: (context, index) => CategoryTile(cats: cats[index]),
      separatorBuilder: (context, index) => Divider(height: 10),
      itemCount: cats.length,
    );
  }
}
