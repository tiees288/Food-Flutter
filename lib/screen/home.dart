import 'package:flutter/material.dart';
import '../Widgets/Carts.dart';
import '../Widgets/button.dart';
import '../Widgets/FoodList/FoodList_ListBuilder.dart';
import '../Widgets/FoodList/FoodList_FutureBuilder.dart';
import '../Models/Food.dart';
import '../Widgets/list_containers.dart';
import '../Widgets/BottomApp.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 1.0,
          centerTitle: false,
          title: const Text(
            "Food List",
            style: TextStyle(
                color: Colors.black, fontSize: 26, fontWeight: FontWeight.bold),
          ),
          backgroundColor: Colors.grey.shade50,
        ),
        bottomNavigationBar: BottomApp(),
        body: Stack(children: [
          foodListFututre(),
          FoodCart(),
        ]));
  }
}
