import 'package:flutter/services.dart';

import 'Widgets/button.dart';
import 'Models/Food.dart';
import 'package:flutter/material.dart';
import 'Widgets/list_containers.dart';
import 'package:flutter/cupertino.dart';

void main() {
  runApp(const MyAppWid());
}

class MyAppWid extends StatelessWidget {
  const MyAppWid({super.key});

  @override
  Widget build(BuildContext context) {
    myfunct() {
      print('Hellow');
    }

    List<Food> FoodList = [
      Food(1, "กะเพรา", "กะเพราใส่จาน", "50", "assets/images/กะเพรา.jpg"),
      Food(2, "ข้าวผัดหมู", "ข้าวผัดหมู", "60", "assets/images/กะเพรา.jpg"),
      Food(3, "ข้าวผัดไก่", "ข้าวผัดไก่", "55", "assets/images/กะเพรา.jpg"),
      Food(4, "ข้าวผัดปลา", "ข้าวผัดปลา", "55", "assets/images/กะเพรา.jpg"),
      Food(5, "ข้าวผัดกุ้ง", "ข้าวผัดกุ้ง", "70", "assets/images/กะเพรา.jpg"),
      Food(6, "ข้าวผัดกุ้ง", "ข้าวผัดกุ้ง", "70", "assets/images/กะเพรา.jpg"),
      Food(7, "ข้าวผัดกุ้ง", "ข้าวผัดกุ้ง", "70", "assets/images/กะเพรา.jpg"),
      Food(8, "ข้าวผัดกุ้ง", "ข้าวผัดกุ้ง", "70", "assets/images/กะเพรา.jpg"),
      Food(9, "ข้าวผัดกุ้ง", "ข้าวผัดกุ้ง", "70", "assets/images/กะเพรา.jpg"),
      Food(10, "ข้าวผัดกุ้ง", "ข้าวผัดกุ้ง", "70", "assets/images/กะเพรา.jpg"),
    ];

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
          bottomNavigationBar: BottomAppBar(
              elevation: 1.0,
              color: Colors.grey.shade50,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                        top: 15, bottom: 0, left: 20, right: 20),
                    child: Text("Home"),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        top: 15, bottom: 0, left: 20, right: 20),
                    child: Text("Orders"),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        top: 15, bottom: 0, left: 20, right: 20),
                    child: Text("Account"),
                  ),
                ],
              )),
          body: Column(children: [
            Expanded(
                child: ListView.builder(
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
                              width:
                                  (MediaQuery.of(context).size.width / 2) - 20,
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
                    })),
            // MainContainer(
            //   child: Text('Into The Child'),
            // ),
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.center,
            //   children: [SubmitBtn(), DissmissBtn()],
            // ),
            // Flex(
            //   direction: Axis.horizontal,
            //   children: List.generate(list.length, (index) {
            //     if (index % 2 == 0) {
            //       return Expanded(
            //         flex: 1,
            //         child: Container(
            //           child: Text(list[index]),
            //         ),
            //       );
            //     } else {
            //       return Expanded(
            //         flex: 1,
            //         child: Container(
            //           child: Text(list[index]),
            //         ),
            //       );
            //     }
            //   }),
            // )
          ])),
      // theme: ThemeData(primarySwatch: Colors.red.shade500),
    );
  }
}
