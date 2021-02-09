import 'package:budget_app/screens/addEditCategory/main.dart';
import 'package:budget_app/screens/chart/main.dart';
import 'package:budget_app/screens/item/main.dart';
import 'package:budget_app/screens/tabs/main.dart';
import 'package:flutter/material.dart';
import 'models/item.dart';

void main() {
  runApp(Home());
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Budgeterio',
      home: Tabs(),
      routes: {
        Items.route: (ctx) => Items(),
        Chart.route: (ctx) => Chart(),
        AddEdit.route: (ctx) => AddEdit(),
      },
      theme: ThemeData(
        primaryColor: Colors.purple,
        accentColor: Colors.orange,
      ),
    );
  }
}
