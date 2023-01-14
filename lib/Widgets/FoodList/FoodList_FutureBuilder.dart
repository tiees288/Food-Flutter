import 'package:flutter/material.dart';
import '../../Models/Food.dart';
import '../list_containers.dart';
import 'package:helloapp/ApiHelpers/Food.dart';

class foodListFututre extends StatefulWidget {
  const foodListFututre({super.key});

  @override
  State<foodListFututre> createState() => _foodListFututreState();
}

class _foodListFututreState extends State<foodListFututre> {
  List<Food> FoodList = List.empty();
  bool isLoading = true;

  @override
  void initState() {
    super.initState();
    fetchFood();
  }

  Future<List<Food>> fetchFood() async {
    List<Food> responseFood = await FetchFood();
    return responseFood;
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            var data = snapshot.data;
            return ListView.builder(
                itemCount: data.length,
                itemBuilder: (BuildContext context, int index) {
                  String foodName = data[index].name;
                  String foodImg = data[index].imgPath;
                  String foodDesc = data[index].description;
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
                                      fontSize: 20,
                                      fontWeight: FontWeight.w300),
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
          return LinearProgressIndicator(
            minHeight: 1,
            backgroundColor: Colors.grey[200],
            valueColor: AlwaysStoppedAnimation<Color>(Colors.black),
          );
        },
        future: fetchFood());
  }
}
