import 'package:flutter/material.dart';
import '../Models/Food.dart';
import '../Widgets/list_containers.dart';
import 'package:helloapp/ApiHelpers/Food.dart';

class listFood extends StatefulWidget {
  const listFood({super.key});

  @override
  State<listFood> createState() => _listFoodState();
}

class _listFoodState extends State<listFood> {
  List<Food> FoodList = List.empty();

  @override
  void initState() {
    super.initState();
    getFood();
  }

  Future<List<Food>> getFood() async {
    List<Food> responseFood = await FetchFood();
    setState(() {
      FoodList = responseFood;
    });
    // print(FoodList);
    return FoodList;
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: FoodList.length,
        itemBuilder: (BuildContext context, int index) {
          String foodName = FoodList[index].name;
          String foodImg = FoodList[index].imgPath;
          String foodDesc = FoodList[index].description;
          return MainContainer(
            child: Row(
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height,
                  width: (MediaQuery.of(context).size.width / 2) - 20,
                  child: Image.asset(foodImg),
                ),
                Container(
                    alignment: Alignment.topCenter,
                    padding: EdgeInsets.only(left: 10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '$foodName',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w300),
                        ),
                        Text('$foodDesc',
                            style: TextStyle(
                              fontSize: 14,
                            )),
                      ],
                    ))
              ],
            ),
          );
        });
  }
}
