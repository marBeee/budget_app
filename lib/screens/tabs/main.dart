import 'package:budget_app/screens/addEditCategory/main.dart';
import 'package:budget_app/screens/categories/main.dart';
import 'package:budget_app/screens/chart/main.dart';
import 'package:flutter/material.dart';

class Tabs extends StatefulWidget {
  @override
  _TabsState createState() => _TabsState();
}

class _TabsState extends State<Tabs> {
  int selectedIndex = 0;

  List<Object> _screen = [
    Categories(),
    Chart(),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: _screen[selectedIndex],
        floatingActionButton: FloatingActionButton(
          onPressed: () => Navigator.of(context).pushNamed(AddEdit.route),
          child: Icon(Icons.add),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: BottomNavigationBar(
          onTap: (int _index) {
            setState(() {
              selectedIndex = _index;
            });
          },
          currentIndex: selectedIndex,
          items: [
            BottomNavigationBarItem(
                label: 'History', icon: Icon(Icons.history_edu)),
            BottomNavigationBarItem(
                label: 'Chart', icon: Icon(Icons.bar_chart_rounded)),
          ],
        ),
      ),
    );
  }
}
