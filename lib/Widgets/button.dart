import 'package:flutter/material.dart';

class SubmitBtn extends StatelessWidget {
  const SubmitBtn({super.key});

  @override
  Widget build(BuildContext context) {
    myfunct() {
      print('Hellow');
      print(context);
    }

    return Container(
      margin: const EdgeInsets.all(5),
      width: 110,
      height: 45,
      // margin: EdgeInsets.all(20),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(4)),
          color: Colors.green.shade400),
      child: TextButton(
        onPressed: myfunct,
        style: ButtonStyle(
          overlayColor: MaterialStateProperty.all(Colors.green.shade500),
        ),
        child: Text(
          "Submit",
          textAlign: TextAlign.center,
          style: TextStyle(color: Colors.white, fontSize: 18),
        ),
      ),
    );
  }
}

class DissmissBtn extends StatelessWidget {
  const DissmissBtn({super.key});

  @override
  Widget build(BuildContext context) {
    myfunct() {
      print('Dismiss');
      print(context);
    }

    return Container(
      margin: const EdgeInsets.all(5),
      width: 110,
      height: 45,
      // margin: EdgeInsets.all(20),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(4)),
          color: Colors.grey.shade400),
      child: TextButton(
        onPressed: myfunct,
        style: ButtonStyle(
          overlayColor: MaterialStateProperty.all(Colors.grey.shade500),
        ),
        child: Text(
          "Cancel",
          textAlign: TextAlign.center,
          style: TextStyle(color: Colors.white, fontSize: 18),
        ),
      ),
    );
  }
}


// All Button Shape
//  Column(
//               children: [
//                 TextButton(
//                   onPressed: () {},
//                   child: Text('Text Button'),
//                 ),
//                 ElevatedButton(
//                   onPressed: () {},
//                   child: Text('Elevated Button'),
//                 ),
//                 IconButton(
//                   onPressed: () {},
//                   icon: Icon(Icons.add),
//                 ),
//                 ButtonBar(
//                   children: [
//                     TextButton(
//                       onPressed: () {},
//                       child: Text('Text Button'),
//                     ),
//                     TextButton(
//                       onPressed: () {},
//                       child: Text('Text Button'),
//                     ),
//                   ],
//                 ),
//                 FloatingActionButton(
//                   onPressed: () {},
//                   child: Icon(Icons.add),
//                 ),
//               ],
//             )