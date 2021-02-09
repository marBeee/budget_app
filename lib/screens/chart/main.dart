import 'package:budget_app/screens/chart/widgets/latestPurchases.dart';
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
      child: Column(
        children: [
          WeeklyChart(),
          Card(
            elevation: 3,
            child: Center(
                child: Container(
                    child: Text('History'), padding: EdgeInsets.all(20))),
          ),
          History(),
        ],
      ),
    );
  }
}
