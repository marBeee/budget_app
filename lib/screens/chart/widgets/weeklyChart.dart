import 'package:budget_app/models/item.dart';
import 'package:budget_app/screens/chart/widgets/chartBar.dart';
import 'package:flutter/material.dart';
import 'package:budget_app/screens/item/item_dummyData.dart';
import 'package:intl/intl.dart';

class WeeklyChart extends StatefulWidget {
  @override
  _WeeklyChartState createState() => _WeeklyChartState();
}

class _WeeklyChartState extends State<WeeklyChart> {
  int chk = 0;
  DateTime date = DateTime.now();
  @override
  void initState() {
    while (date.weekday != DateTime.saturday) {
      date = date.add(Duration(days: 1));
    }
    print('hello');
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    List<double> sumAmount = [];
    double maxSpending = 0;
    List<Item> week = dummyDataItem;
    DateTime dateTrav;

    dateTrav = date;
    for (var i = 0; i < 7; i++) {
      double sum = 0;
      for (var a = 0; a < week.length; a++) {
        if (DateFormat.MMMd('en_US').format(dateTrav) ==
            DateFormat.MMMd('en_US').format(week[a].datePurchased))
          sum += week[a].itemCost;
      }
      if (sum > maxSpending) {
        maxSpending = sum;
      }
      sumAmount.add(sum);
      dateTrav = dateTrav.subtract(Duration(days: 1));
    }
    return Card(
      elevation: 3,
      child: Container(
        margin: EdgeInsets.all(15),
        child: Column(
          children: [
            Text(
              'Weekly Chart',
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  icon: Icon(Icons.arrow_left),
                  onPressed: () {
                    setState(() {
                      date = date.subtract(Duration(days: 7));
                      chk++;
                    });
                    print(chk);
                  },
                ),
                Text(DateFormat.MMMd('en_US')
                        .format(dateTrav.add(Duration(days: 1))) +
                    ' - ' +
                    DateFormat.MMMd('en_US').format(date)),
                IconButton(
                  icon: Icon(Icons.arrow_right),
                  onPressed: () {
                    setState(() {
                      date = date.add(Duration(days: 7));
                      chk++;
                    });
                    print(chk);
                  },
                )
              ],
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Flexible(
                    flex: 1,
                    child: Bar(
                        amount: maxSpending, spent: sumAmount[6], day: 'Sun'),
                  ),
                  Flexible(
                    flex: 1,
                    child: Bar(
                        amount: maxSpending, spent: sumAmount[5], day: 'Mon'),
                  ),
                  Flexible(
                    flex: 1,
                    child: Bar(
                        amount: maxSpending, spent: sumAmount[4], day: 'Tue'),
                  ),
                  Flexible(
                    flex: 1,
                    child: Bar(
                        amount: maxSpending, spent: sumAmount[3], day: 'Wed'),
                  ),
                  Flexible(
                    flex: 1,
                    child: Bar(
                        amount: maxSpending, spent: sumAmount[2], day: 'Thu'),
                  ),
                  Flexible(
                    flex: 1,
                    child: Bar(
                        amount: maxSpending, spent: sumAmount[1], day: 'Fri'),
                  ),
                  Flexible(
                    flex: 1,
                    child: Bar(
                        amount: maxSpending, spent: sumAmount[0], day: 'Sat'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
