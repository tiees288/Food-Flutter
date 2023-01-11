import 'package:flutter/services.dart';
import 'package:helloapp/ApiHelpers/Food.dart';
import 'Widgets/Carts.dart';
import 'Widgets/button.dart';
import 'Widgets/FoodList.dart';
import 'Models/Food.dart';
import 'package:flutter/material.dart';
import 'Widgets/list_containers.dart';
import 'package:flutter/cupertino.dart';

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
            listFood(),
            FoodCart(),
          ])),
      // theme: ThemeData(primarySwatch: Colors.red.shade500),
    );
  }
}
