import 'package:budget_app/models/category.dart';
import 'package:budget_app/screens/addEditCategory/main.dart';
import 'package:budget_app/screens/item/main.dart';
import 'package:flutter/material.dart';

class CategoryTile extends StatelessWidget {
  final Category cats;
  const CategoryTile({this.cats});
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(cats.name),
      subtitle: _bar(cats.maxAmount, cats.spentAmount),
      onTap: () => Navigator.of(context).pushNamed(Items.route),
      trailing: IconButton(
        icon: Icon(Icons.edit_outlined),
        onPressed: () => Navigator.of(context).pushNamed(AddEdit.route),
      ),
    );
  }
}

Widget _bar(double max, double spent) {
  double percent = (spent / max) * 100;
  double len = (spent / max) * 200;
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Stack(
        children: [
          Container(
            height: 10,
            width: 200,
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.blue,
            ),
            height: 10,
            width: len,
          )
        ],
      ),
      Text('$percent%')
    ],
  );
}
