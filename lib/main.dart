import 'dart:ffi';

import 'package:flutter/material.dart';
import 'Widgets/button.dart';
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

    List<String> list = ["Test1", "Test2", "Test3", "Test4"];

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
                child: ListView(
              children: [
                MainContainer(
                  child: Text('Into The Child'),
                ),
                MainContainer(
                  child: Text('Into The Child'),
                ),
                MainContainer(
                  child: Text('Into The Child'),
                ),
                MainContainer(
                  child: Text('Into The Child'),
                ),
                MainContainer(
                  child: Text('Into The Child'),
                ),
                MainContainer(
                  child: Text('Into The Child'),
                ),
                MainContainer(
                  child: Text('Into The Child'),
                ),
              ],
            )),
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
