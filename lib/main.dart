import 'package:flutter/material.dart';
import 'Widgets/button.dart';
import 'Widgets/list_containers.dart';

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

    return MaterialApp(
      title: 'Main',
      home: Scaffold(
          appBar: AppBar(
            centerTitle: false,
            title: const Text(
              "App01",
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
            ),
            backgroundColor: Colors.grey.shade50,
          ),
          body: Column(children: [
            MainContainer(
              child: Text('Into The Child'),
            ),
            SizedBox(
              width: 100,
              child:
                  OutlinedButton(onPressed: myfunct, child: Text('Register')),
            ),
            SubmitBtn()
          ])),
      // theme: ThemeData(primarySwatch: Colors.red.shade500),
    );
  }
}
