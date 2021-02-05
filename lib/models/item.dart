import 'package:flutter/material.dart';

class Item {
  final int itemId;
  final int catId;
  final String itemName;
  final double itemCost;
  final DateTime datePurchased;

  Item(
      {@required this.itemId,
      @required this.catId,
      this.itemName,
      this.itemCost,
      this.datePurchased});
}
