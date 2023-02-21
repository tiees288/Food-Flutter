import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../Widgets/Carts.dart';
import '../Widgets/button.dart';
import '../Widgets/FoodList/FoodList_ListBuilder.dart';
import '../Widgets/FoodList/FoodList_FutureBuilder.dart';
import '../Models/Food.dart';
import '../Widgets/list_containers.dart';
import '../Widgets/BottomApp.dart';

// Providers Models
import '../Providers/FoodListData.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
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
        body: Consumer<FoodlistProvider>(
            builder: (context, FoodlistProvider provider, Widget? child) {
          return Stack(children: [
            // foodListFututre(),
            FoodCart(),
            ListView.builder(
              itemCount: provider.FoodList.length,
              itemBuilder: (context, index) {
                Food food = provider.FoodList[index];
                List<Food> abc = provider.FoodList;

                return Row(children: [
                  Text(provider.FoodList[index].name),
                  ElevatedButton(
                      onPressed: () {
                        abc.add(Food(
                            id: '1',
                            name: "food",
                            description: 'description',
                            price: '22',
                            imgPath: 'imgPath'));

                        // provider.set(abc);
                        var pv = Provider.of<FoodlistProvider>(context,
                                listen: false)
                            .set(abc);

                        print("clear");
                      },
                      child: Text("Clear")),
                ]);
              },
            ),
          ]);
        }));
  }
}
