import 'package:flutter/material.dart';

class Category {
  final int catId;
  final String name;
  final double maxAmount;
  final double spentAmount;

  Category({@required this.catId, this.name, this.maxAmount, this.spentAmount});
}
