import 'package:flutter/material.dart';
import '../Models/Food.dart';

class FoodState extends ChangeNotifier {
  List<Food> FoodList = [];
  //  FoodList [
  //   Food(
  //       id: "1",
  //       name: "Pizza",
  //       description: "Pizza",
  //       price: "10",
  //       imgPath: "assets/images/pizza.jpg"),
  //   Food(
  //       id: "2",
  //       name: "Burger",
  //       description: "Burger",
  //       price: "10",
  //       imgPath: "assets/images/burger.jpg"),
  // ];

  List<Food> get counter => FoodList;

  void set(List<Food> value) {
    FoodList = value;
    notifyListeners();
  }
}
