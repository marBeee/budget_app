import 'package:budget_app/screens/categories/main.dart';
import 'package:budget_app/screens/chart/main.dart';
import 'package:budget_app/screens/item/main.dart';
import 'package:flutter/material.dart';

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
      home: Categories(),
      routes: {
        Items.route: (ctx) => Items(),
        Chart.route: (ctx) => Chart(),
      },
      theme: ThemeData(
        primaryColor: Colors.purple,
        accentColor: Colors.orange,
      ),
    );
  }
}
