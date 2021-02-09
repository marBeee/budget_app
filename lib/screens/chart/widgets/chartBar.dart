import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class Bar extends StatelessWidget {
  final double amount;
  final double spent;
  final String day;
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
        Text(day, style: TextStyle(fontSize: 10)),
      ],
    );
  }

  double prcnt() {
    return (spent / amount) * 100;
  }
}
