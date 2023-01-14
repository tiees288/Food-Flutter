// Libs
import 'package:flutter/services.dart';
import 'package:helloapp/ApiHelpers/Food.dart';
import 'package:flutter/cupertino.dart';
// Widgets
import 'Widgets/Carts.dart';
import 'Widgets/button.dart';
import 'Widgets/FoodList/FoodList_ListBuilder.dart';
import 'Widgets/FoodList/FoodList_FutureBuilder.dart';
import 'Models/Food.dart';
import 'package:flutter/material.dart';
import 'Widgets/list_containers.dart';
import 'Widgets/BottomApp.dart';

main() {
  runApp(const MyAppWid());
}

class MyAppWid extends StatelessWidget {
  const MyAppWid({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Main',
      home: Scaffold(
          appBar: AppBar(
            elevation: 1.0,
            centerTitle: false,
            title: const Text(
              "Food List",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 26,
                  fontWeight: FontWeight.bold),
            ),
            backgroundColor: Colors.grey.shade50,
          ),
          bottomNavigationBar: BottomApp(),
          body: Stack(children: [
            foodListFututre(),
            FoodCart(),
          ])),
      // theme: ThemeData(primarySwatch: Colors.red.shade500),
    );
  }
}
