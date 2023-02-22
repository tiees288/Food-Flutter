import 'package:flutter/material.dart';

class ButtonRed extends StatelessWidget {
  final String text;
  final Function()? onPressed;
  const ButtonRed({super.key, required this.onPressed, required this.text});

  @override
  Widget build(BuildContext context) {
    Color buttonColor = Colors.red;

    return Container(
      width: MediaQuery.of(context).size.width - 50,
      margin: EdgeInsets.only(bottom: 20.0),
      child: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            padding: EdgeInsets.only(left: 30, right: 25, bottom: 5),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5.0),
            ),
            backgroundColor: buttonColor,
          ),
          onPressed: onPressed,
          child: Text(this.text,
              style: TextStyle(color: Colors.white, fontSize: 16)),
        ),
      ),
    );
  }
}
