import 'package:budget_app/models/item.dart';
import 'package:budget_app/screens/item/item_dummyData.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class History extends StatelessWidget {
  const History({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Item> items = dummyDataItem;
    return Expanded(
      child: Container(
        child: Card(
          elevation: 3,
          // child: Expanded(
          //   child: SizedBox(
          child: ListView.builder(
            itemCount: items.length,
            itemBuilder: (context, index) {
              return ListTile(
                onTap: () {},
                title: Text(items[index].itemName),
                trailing: Text(items[index].itemCost.toString()),
                subtitle: Text(DateFormat.yMMMd('en_US')
                    .format(items[index].datePurchased)),
              );
            },
          ),
          //   ),
          // ),
        ),
      ),
    );
  }
}
