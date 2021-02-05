import 'package:flutter/material.dart';

class Categories extends StatefulWidget {
  @override
  _CategoriesState createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
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
                label: 'Chart', icon: Icon(Icons.bar_chart_rounded)),
            BottomNavigationBarItem(
                label: 'History', icon: Icon(Icons.history_edu))
          ],
        ),
      ),
    );
  }
}
