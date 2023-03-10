import 'package:flutter/material.dart';
import '../../Models/Food.dart';
import '../list_containers.dart';
import '../../ApiHelpers/Food.dart';

class listFood extends StatefulWidget {
  const listFood({super.key});

  @override
  State<listFood> createState() => _listFoodState();
}

class _listFoodState extends State<listFood> {
  List<Food> FoodList = List.empty();
  bool isLoading = true;

  @override
  void initState() {
    super.initState();
    fetchFood();
  }

  Future<List<Food>> fetchFood() async {
    List<Food> responseFood = await FetchFood();
    setState(() {
      FoodList = responseFood;
      isLoading = false;
    });
    // print(FoodList);
    return FoodList;
  }

  @override
  Widget build(BuildContext context) {
    return (isLoading == true
        ? LinearProgressIndicator(
            backgroundColor: Colors.grey.shade50,
            valueColor: AlwaysStoppedAnimation<Color>(Colors.black),
          )
        : ListView.builder(
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
            }));
  }
}
