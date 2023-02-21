import 'package:flutter/material.dart';
import '../Models/Food.dart';

class FoodlistProvider extends ChangeNotifier {
  // List<Food> FoodList = [];
  List<Food> FoodList = [];

  List<Food> get Data => FoodList;

  void set(List<Food> value) {
    FoodList = value;
    notifyListeners();
  }
}
