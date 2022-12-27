import 'package:flutter/material.dart';

class SubmitBtn extends StatelessWidget {
  const SubmitBtn({super.key});

  @override
  Widget build(BuildContext context) {
    myfunct() {
      print('Hellow');
      print(context);
    }

    return SizedBox(
      child: Container(
          width: 110,
          height: 45,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(4)),
              color: Colors.blue.shade400),
          child: TextButton(
            onPressed: myfunct,
            child: Text(
              "Submit",
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.white, fontSize: 18),
            ),
          )),
    );
  }
}
