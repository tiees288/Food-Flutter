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
      Food(1, "กะเพรา", "กะเพราใส่จาน", "50"),
      Food(2, "ข้าวผัดหมู", "ข้าวผัดหมู", "60"),
      Food(3, "ข้าวผัดไก่", "ข้าวผัดไก่", "55"),
      Food(4, "ข้าวผัดปลา", "ข้าวผัดปลา", "55"),
      Food(5, "ข้าวผัดกุ้ง", "ข้าวผัดกุ้ง", "70"),
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
          body: Column(children: [
            // Container(
            //     margin: EdgeInsets.only(top: 10, left: 15),
            //     child: Align(
            //         alignment: Alignment.topLeft,
            //         child: Text(
            //           "Recommended",
            //           style: TextStyle(
            //               color: Colors.black,
            //               fontSize: 22,
            //               fontWeight: FontWeight.bold),
            //         ))),
            Expanded(
                child: ListView.builder(
                    itemCount: FoodList.length,
                    itemBuilder: (BuildContext context, int index) {
                      String foodName = FoodList[index].name;
                      return MainContainer(
                        child: Text('$foodName'),
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
