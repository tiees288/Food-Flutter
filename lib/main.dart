import 'package:flutter/services.dart';
import 'Widgets/Carts.dart';
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
            child: Container(
              height: 40,
              child: Padding(
                padding: EdgeInsets.only(top: 6, bottom: 12),
                child: Wrap(
                  alignment: WrapAlignment.center,
                  spacing: 50,
                  children: [
                    InkWell(
                        onTap: () {
                          print("HOme");
                        },
                        child: Container(
                            width: 50,
                            // heigh/t: 4,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: Column(children: [
                              Icon(
                                Icons.home,
                                color: Colors.black,
                              ),
                              Text(
                                "Home",
                                style: TextStyle(fontSize: 12),
                              )
                            ]))),
                    Wrap(children: [
                      Column(children: [
                        Icon(
                          Icons.history,
                          color: Colors.black,
                        ),
                        Text(
                          "Orders",
                          style: TextStyle(fontSize: 12),
                        )
                      ])
                    ]),
                    Wrap(children: [
                      Column(children: [
                        Icon(
                          Icons.account_box,
                          color: Colors.black,
                        ),
                        Text(
                          "Accounts",
                          style: TextStyle(fontSize: 12),
                        )
                      ])
                    ]),
                  ],
                ),
              ),
            ),
          ),
          body: Stack(children: [
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
            FoodCart(),
          ])),
      // theme: ThemeData(primarySwatch: Colors.red.shade500),
    );
  }
}
