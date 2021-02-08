import 'package:budget_app/models/item.dart';
import 'package:flutter/material.dart';
import 'package:budget_app/screens/item/item_dummyData.dart';
import 'package:intl/intl.dart';

class WeeklyChart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<Item> week = dummyDataItem;
    DateTime date = DateTime.now();
    double maxSpending = 0;
    List<double> sumAmount = [];
    for (var i = 0; i < 7; i++) {
      double sum = 0;
      for (var a = 0; a < week.length; a++) {
        if (date.day == week[a].datePurchased.day) sum += week[a].itemCost;
      }
      if (sum > maxSpending) {
        maxSpending = sum;
      }
      sumAmount.add(sum);
      date = date.subtract(Duration(days: 1));
    }
    date = DateTime.now();
    return Card(
      elevation: 3,
      child: Container(
        margin: EdgeInsets.all(15),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Flexible(
              flex: 1,
              child: Bar(
                amount: maxSpending,
                spent: sumAmount[0],
                day: date,
              ),
            ),
            Flexible(
              flex: 1,
              child: Bar(
                amount: maxSpending,
                spent: sumAmount[1],
                day: date.subtract(
                  Duration(days: 1),
                ),
              ),
            ),
            Flexible(
              flex: 1,
              child: Bar(
                amount: maxSpending,
                spent: sumAmount[2],
                day: date.subtract(
                  Duration(days: 2),
                ),
              ),
            ),
            Flexible(
              flex: 1,
              child: Bar(
                amount: maxSpending,
                spent: sumAmount[3],
                day: date.subtract(
                  Duration(days: 3),
                ),
              ),
            ),
            Flexible(
              flex: 1,
              child: Bar(
                amount: maxSpending,
                spent: sumAmount[4],
                day: date.subtract(
                  Duration(days: 4),
                ),
              ),
            ),
            Flexible(
              flex: 1,
              child: Bar(
                amount: maxSpending,
                spent: sumAmount[5],
                day: date.subtract(
                  Duration(days: 5),
                ),
              ),
            ),
            Flexible(
              flex: 1,
              child: Bar(
                amount: maxSpending,
                spent: sumAmount[6],
                day: date.subtract(
                  Duration(days: 6),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Bar extends StatelessWidget {
  final double amount;
  final double spent;
  final DateTime day;
  const Bar(
      {Key key,
      @required this.amount,
      @required this.spent,
      @required this.day})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('₱${NumberFormat.compact().format(spent)}',
            style: TextStyle(fontSize: 10)),
        Stack(children: [
          Container(
            decoration: BoxDecoration(
              color: Colors.grey[200],
              borderRadius: BorderRadius.all(
                Radius.circular(20),
              ),
            ),
            height: 100,
            width: 10,
          ),
          if (amount != 0)
            Positioned(
              bottom: 0,
              child: Container(
                decoration: BoxDecoration(
                  color: Theme.of(context).accentColor,
                  borderRadius: BorderRadius.all(
                    Radius.circular(20),
                  ),
                ),
                height: prcnt(),
                width: 10,
              ),
            ),
        ]),
        Text(DateFormat.E('en_US').format(day), style: TextStyle(fontSize: 10)),
      ],
    );
  }

  double prcnt() {
    return (spent / amount) * 100;
  }
}
