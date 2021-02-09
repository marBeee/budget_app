import 'package:budget_app/models/category.dart';
import 'package:budget_app/models/item.dart';
import 'package:budget_app/screens/item/item_dummyData.dart';

List<Item> itemList = dummyDataItem;
List<Category> dummyCategories = [
  Category(
    catId: 0,
    name: 'Food',
    maxAmount: 100,
    spentAmount: totalCalculator(0),
  ),
  Category(
      catId: 1,
      name: 'Furniture',
      maxAmount: 200,
      spentAmount: totalCalculator(1)),
  Category(
      catId: 2,
      name: 'School',
      maxAmount: 300,
      spentAmount: totalCalculator(2)),
];

double totalCalculator(int thiscatID) {
  double sum = 0;
  for (var i = 0; i < itemList.length; i++) {
    if (itemList[i].catId == thiscatID) sum += itemList[i].itemCost;
  }
  return sum;
}
