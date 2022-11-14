import 'package:flutter/material.dart';
import 'package:unipro/models/meals.dart';

import '../constant.dart';

class MenuProvider extends ChangeNotifier {
  final List<Meal> _items = [];

  List<Meal> get items => _items;

  void loadItems(String categoryId) async {
    _items.clear();
    final object = Meals_List.firstWhere((e) => e['Meal_List'] == categoryId);
    final List<Meal> list = object['Meal'];
    _items.addAll(list);
    notifyListeners();
  }
}
