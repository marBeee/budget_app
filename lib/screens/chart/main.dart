import 'package:budget_app/screens/chart/widgets/weeklyChart.dart';

import 'package:flutter/material.dart';

class Chart extends StatefulWidget {
  static const route = 'charts';
  @override
  _ChartState createState() => _ChartState();
}

class _ChartState extends State<Chart> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: ListView(
        children: [
          WeeklyChart(),
        ],
      ),
    );
  }
}
